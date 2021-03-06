# Network Formulations
The network formulations for joint gas-power modeling use the formulations defined in GasModels.jl and PowerModels.jl.


# GasPowerModels Types
```@meta
CurrentModule = GasPowerModels
```

Specification of a `GasPowerModel` requires the specification of both a `GasModels.AbstractGasModel` and a `PowerModels.AbstractPowerModel`, respectively.
For example, to specify a formulation that leverages the `CRDWPGasModel` and `SOCWRPowerModel` types, the corresponding `GasPowerModel` type would be
```julia
GasPowerModel{CRDWPGasModel, SOCWRPowerModel}
```

GasPowerModels then utilizes the following (internal) function to construct a `GasPowerModel` object:
```@docs
instantiate_model
```

## Type Hierarchy

GasPowerModels inherits the type hierarchies of GasModels and PowerModels.
Constraint and objective functions are then dispatched based on the choice of types for each of the models.
An example is seen in the function
```@docs
constraint_heat_rate
constraint_heat_rate_on_off
```

The convention is that, if a relaxation or approximation of a nonconvex constraint is used in a natural gas and/or electric power model, the linking constraint will also be similarly relaxed or approximated according to the most "complex" independent infrastructure modeling formulation.
For example, if the natural gas formulation uses a linear representation, and the electric power model uses a quadratic representation, then the linking constraint uses the tightest possible relaxation using linear and quadratic interdependency equations.
