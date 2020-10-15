# Definitions for solving an optimal joint power flow problem with network expansion.

"Entry point for running gas and electric power expansion planning with demand-based pricing
and a pressure penalty (in TPS paper)."
function run_ne_opf(g_file, p_file, g_type, p_type, optimizer; kwargs...)
    gm_ref_extensions = [_GM.ref_add_ne!, ref_add_price_zones!]
    pm_ref_extensions = [_PM.ref_add_on_off_va_bounds!, _PM.ref_add_ne_branch!]

    return run_model(g_file, p_file, g_type, p_type, optimizer, build_ne_opf;
        gm_ref_extensions=gm_ref_extensions, pm_ref_extensions=pm_ref_extensions, kwargs...)
end

"Construct the expansion planning with optimal power flow problem."
function build_ne_opf(pm::_PM.AbstractPowerModel, gm::_GM.AbstractGasModel)
    # Gas-only-related variables and constraints.
    _GM.build_nels(gm)

    # Power-only-related variables and constraints.
    _PM.build_tnep(pm)

    # Gas-power related constraints of the problem formulation.
    for i in _GM.ids(gm, :delivery)
       constraint_heat_rate_curve(pm, gm, i)
    end

    # Variables related to the NE OGPF problem.
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

    # Objective function minimizes network expansion, demand, and pressure cost.
    objective_min_ne_opf_cost(pm, gm)


end
