"""
    instantiate_model(
        data, g_type, p_type, build_method; gm_ref_extensions, pm_ref_extensions, kwargs...)

    Instantiates and returns GasModels and PowerModels modeling objects where `data` is the
    dictionary of input data, `g_type` and `p_type` are the gas and power modeling types,
    `build_method` is the build method for the problem specification being considered, and
    `gm_ref_extensions` and `pm_ref_extensions` are arrays of functions used to define gas
    and power modeling extensions.
"""
function instantiate_model(
    data::Dict{String,<:Any}, g_type::Type, p_type::Type, build_method::Function;
    gm_ref_extensions::Vector{<:Function}=Vector{Function}([]),
    pm_ref_extensions::Vector{<:Function}=Vector{Function}([]), kwargs...)
    # Instantiate the GasModels object.
    gm = _GM.instantiate_model(
        data, g_type, m->nothing; ref_extensions = gm_ref_extensions)

    # Instantiate the PowerModels object.
    pm = _PM.instantiate_model(
        data, p_type, m->nothing; ref_extensions = pm_ref_extensions, jump_model = gm.model)

    # TODO: Change this to a function on g_data and p_data.
    # Assign generator numbers to deliveries.
    _assign_delivery_generators!(gm, pm)

    # Build the corresponding problem.
    build_method(pm, gm)

    # Return the two individual *Models objects.
    return gm, pm
end


"""
    instantiate_model(
        g_file, p_file, link_file, g_type, p_type, build_method;
        gm_ref_extensions, pm_ref_extensions, kwargs...)

    Instantiates and returns GasModels and PowerModels modeling objects from gas and power
    input files `g_file` and `p_file`, respectively. Here, `link_file` is an input file that
    links gas and power networks, `g_type` and `p_type` are the gas and power modeling
    types, `build_method` is the build method for the problem specification being
    considered, and `gm_ref_extensions` and `pm_ref_extensions` are arrays of functions used
    to define gas and power modeling extensions.
"""
function instantiate_model(
    g_file::String, p_file::String, link_file::String, g_type::Type, p_type::Type,
    build_method::Function; gm_ref_extensions::Vector{<:Function}=Vector{Function}([]),
    pm_ref_extensions::Vector{<:Function}=Vector{Function}([]), kwargs...)
    # Read gas and power data from files.
    data = parse_files(g_file, p_file, link_file)

    # Store whether or not each network uses per-unit data.
    g_per_unit = get(data["it"]["ng"], "is_per_unit", 0) != 0
    p_per_unit = get(data["it"]["ep"], "per_unit", false)

    # Run data correction routines.
    correct_network_data!(data)

    # Ensure all datasets use the same units for power.
    resolve_units!(data, g_per_unit)

    # Instantiate GasModels and PowerModels modeling objects.
    return instantiate_model(
        data, g_type, p_type, build_method; gm_ref_extensions = gm_ref_extensions,
        pm_ref_extensions = pm_ref_extensions, kwargs...)
end


"""
    run_model(
        g_data, p_data, links, g_type, p_type, optimizer, build_method;
        gm_solution_processors, pm_solution_processors, gm_ref_extensions,
        pm_ref_extensions, kwargs...)

    Instantiates and solves the joint GasModels and PowerModels modeling objects from gas
    and power input data `g_data` and `p_data`, respectively. Here, `links` is an array of
    dictionaries that link gas and power network components, `g_type` and `p_type` are the
    gas and power modeling types, `optimizer` it the optimization solver, `build_method` is
    the build method for the problem specification being considered,
    `gm_solution_processors` and `pm_solution_processors` are arrays of gas and power model
    solution processors, and `gm_ref_extensions` and `pm_ref_extensions` are arrays of gas
    and power modeling extensions. Returns a dictionary of combined results.
"""
function run_model(
    data::Dict{String,<:Any}, g_type::Type, p_type::Type,
    optimizer::Union{_MOI.AbstractOptimizer, _MOI.OptimizerWithAttributes},
    build_method::Function; gm_solution_processors::Vector{<:Function}=Vector{Function}([]),
    pm_solution_processors::Vector{<:Function}=Vector{Function}([]),
    gm_ref_extensions::Vector{<:Function}=Vector{Function}([]),
    pm_ref_extensions::Vector{<:Function}=Vector{Function}([]), kwargs...)
    start_time = time()

    gm, pm = instantiate_model(
        data, g_type, p_type, build_method; gm_ref_extensions=gm_ref_extensions,
        pm_ref_extensions=pm_ref_extensions, kwargs...)

    Memento.debug(_LOGGER, "gpm model build time: $(time() - start_time)")

    start_time = time()

    # Solve the optimization model and store the gas modeling result.
    gas_result = _IM.optimize_model!(
        gm, optimizer=optimizer, solution_processors = gm_solution_processors)

    # Build the power modeling result using the same model as above.
    power_result = _IM.build_result(
        pm, gas_result["solve_time"]; solution_processors = pm_solution_processors)

    Memento.debug(_LOGGER, "gpm model solution time: $(time() - start_time)")

    # Create a combined gas-power result object.
    result = gas_result # Contains most of the result data, already.

    # Merge data from the two solution dictionaries.
    _IM.update_data!(gas_result["solution"], power_result["solution"])

    # Return the combined result dictionary.
    return gas_result
end


"""
    run_model(
        g_file, p_file, link_file, g_type, p_type, optimizer, build_method;
        gm_solution_processors, pm_solution_processors, gm_ref_extensions,
        pm_ref_extensions, kwargs...)

    Instantiates and solves the joint GasModels and PowerModels modeling objects from gas
    and power input files `g_file` and `p_file`, respectively. Here, `link_file` is an input
    file that links gas and power networks, `g_type` and `p_type` are the gas and power
    modeling types, `optimizer` it the optimization solver, `build_method` is the build
    method for the problem specification being considered, `gm_solution_processors` and
    `pm_solution_processors` are arrays of gas and power model solution processors, and
    `gm_ref_extensions` and `pm_ref_extensions` are arrays of gas and power modeling
    extensions. Returns a dictionary of combined results.
"""
function run_model(
    g_file::String, p_file::String, link_file::String, g_type::Type, p_type::Type,
    optimizer::Union{_MOI.AbstractOptimizer, _MOI.OptimizerWithAttributes},
    build_method::Function; gm_solution_processors::Vector{<:Function}=Vector{Function}([]),
    pm_solution_processors::Vector{<:Function}=Vector{Function}([]),
    gm_ref_extensions::Vector{<:Function}=Vector{Function}([]),
    pm_ref_extensions::Vector{<:Function}=Vector{Function}([]), kwargs...)
    # Read gas and power data from files.
    data = parse_files(g_file, p_file, link_file)

    # Store whether or not each network uses per-unit data.
    g_per_unit = get(data["it"]["ng"], "is_per_unit", 0) != 0
    p_per_unit = get(data["it"]["ep"], "per_unit", false)

    # Run data correction routines.
    correct_network_data!(data)

    # Ensure all datasets use the same units for power.
    resolve_units!(data, g_per_unit)

    return run_model(
        data, g_type, p_type, optimizer, build_method; gm_solution_processors =
        gm_solution_processors, pm_solution_processors = pm_solution_processors,
        gm_ref_extensions = gm_ref_extensions, pm_ref_extensions = pm_ref_extensions,
        kwargs...)
end
