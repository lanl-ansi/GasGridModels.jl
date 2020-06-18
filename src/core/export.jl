# GasPowerModels exports everything except internal symbols, which are defined as
# those whose name starts with an underscore. If you don't want all of these
# symbols in your environment, then use `import GasPowerModels` instead of
# `using GasPowerModels`.

# Do not add GasPowerModels-defined symbols to this exclude list. Instead, rename
# them with an underscore.

const _EXCLUDE_SYMBOLS = [Symbol(@__MODULE__), :eval, :include]

for sym in names(@__MODULE__, all=true)
    sym_string = string(sym)
    if sym in _EXCLUDE_SYMBOLS || startswith(sym_string, "_") || startswith(sym_string, "@_")
        continue
    end
    if !(Base.isidentifier(sym) || (startswith(sym_string, "@") &&
         Base.isidentifier(sym_string[2:end])))
       continue
    end
    #println("$(sym)")
    @eval export $sym
end


# the follow items are also exported for user-friendlyness when calling
# `using GasPowerModels`

# so that users do not need to import JuMP to use a solver with GasPowerModels
import JuMP: with_optimizer
export with_optimizer

# so that users do not need to import JuMP to use a solver with GasPowerModels
# note does appear to be work with JuMP v0.20, but throws "could not import" warning
import JuMP: optimizer_with_attributes
export optimizer_with_attributes

import InfrastructureModels._MOI: TerminationStatusCode
export TerminationStatusCode

import InfrastructureModels._MOI: ResultStatusCode
export ResultStatusCode

for status_code_enum in [TerminationStatusCode, ResultStatusCode]
    for status_code in instances(status_code_enum)
        @eval import InfrastructureModels._MOI: $(Symbol(status_code))
        @eval export $(Symbol(status_code))
    end
end

# Export GasModels modeling types for ease of use.
gas_models = filter(x -> endswith(string(x), "GasModel") &&
    !occursin("Abstract", string(x)), names(GasModels))
for x in gas_models @eval import GasModels: $(x) end
for x in gas_models @eval export $(x) end

# Export PowerModels modeling types for ease of use.
power_models = filter(x -> endswith(string(x), "PowerModel") &&
    !occursin("Abstract", string(x)), names(PowerModels))
for x in power_models @eval import PowerModels: $(x) end
for x in power_models @eval export $(x) end

# Export from InfrastructureModels.
export ids, ref, var, con, sol, nw_ids, nws, optimize_model!
