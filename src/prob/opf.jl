# Definitions for solving an optimal joint power flow problem.

"Entry point into running the optimal power flow problem."
function run_opf(g_file, p_file, link_file, g_type, p_type, optimizer; kwargs...)
    return run_model(
        g_file, p_file, link_file, g_type, p_type, optimizer, build_opf;
        gm_ref_extensions=[ref_add_price_zones!], kwargs...)
end

"Construct the optimal power flow problem."
function build_opf(pm::_PM.AbstractPowerModel, gm::_GM.AbstractGasModel)
    # Gas-only related variables and constraints
    _GM.build_gf(gm)

    # Power-only related variables and constraints
    _PM.build_pf(pm)

    # Gas-power related parts of the problem formulation.
    for i in _GM.ids(gm, :delivery)
        constraint_heat_rate_curve(pm, gm, i)
    end

    # Variables related to the OGPF problem.
    variable_zone_demand(gm)
    variable_zone_demand_price(gm)
    variable_zone_pressure(gm)
    variable_pressure_price(gm)

    # Constraints related to price zones.
    for (i, price_zone) in _GM.ref(gm, :price_zone)
        constraint_zone_demand(gm, i)
        constraint_zone_demand_price(gm, i)
        constraint_zone_pressure(gm, i)
        constraint_pressure_price(gm, i)
    end

    # Objective minimizes operation cost.
    objective_min_opf_cost(gm, pm)
end
