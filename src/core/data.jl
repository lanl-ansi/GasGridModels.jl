"Resolve the units for energy used throughout the disparate datasets."
function resolve_units!(data::Dict{String, Any}, gas_is_per_unit::Bool, power_is_per_unit::Bool)
    delivery_gens = data["it"]["dep"]["delivery_gen"]
    g_data, p_data = data["it"][_GM.gm_it_name], data["it"][_PM.pm_it_name]

    if !power_is_per_unit
        for (i, link) in filter(x -> haskey(x.second, "heat_rate_curve_coefficients"), delivery_gens)
            c = link["heat_rate_curve_coefficients"]
            c[1], c[2] = c[1] * p_data["baseMVA"]^2, c[2] * p_data["baseMVA"]
            link["heat_rate_curve_coefficients"] = c
        end
    end

    if !gas_is_per_unit
        # Scale the energy factor in gas data by base flow.
        energy_factor = get(g_data, "energy_factor", 1.0)
        g_data["energy_factor"] = energy_factor * inv(g_data["base_flow"])
    end
end


function correct_network_data!(data::Dict{String, Any})
    # Correct and prepare gas network data.
    _GM.correct_network_data!(data)
    _GM.propagate_topology_status!(data)

    # Correct and prepare power network data.
    _PM.correct_network_data!(data)
    _PM.simplify_network!(data)

    # Correct and prepare linking data.
    assign_delivery_generators!(data)
end


function assign_delivery_generators!(data::Dict{String, Any})
    for (key, delivery_gen) in data["it"]["dep"]["delivery_gen"]
        gen_name, del_name = delivery_gen["gen"]["id"], delivery_gen["delivery"]["id"]
        gens, dels = data["it"][_PM.pm_it_name]["gen"], data["it"][_GM.gm_it_name]["delivery"]
        gen_name = typeof(gen_name) == String ? gen_name : string(gen_name)
        del_name = typeof(del_name) == String ? del_name : string(del_name)

        gen = gens[findfirst(x -> parse(Int, gen_name) == x["source_id"][2], gens)]
        del = dels[findfirst(x -> parse(Int, del_name) == x["id"], dels)]
        delivery_gen["gen"]["id"], delivery_gen["delivery"]["id"] = gen["index"], del["index"]

        if gen["gen_status"] == 0 || del["status"] == 0
            delivery_gen["status"] = 0
        end
    end
end
