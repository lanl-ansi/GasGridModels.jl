"Add price zone information to GasModels data reference dictionary."
function ref_add_price_zones!(ref::Dict{Symbol,<:Any}, data::Dict{String,<:Any})
    nws_data = _IM.ismultinetwork(data) ? data["nw"] : Dict("0" => data)

    for (n, nw_data) in nws_data
        if !haskey(nw_data, "price_zone")
            ref[:nw][parse(Int, n)][:price_zone] = Dict()
        else
            for (i, x) in nw_data["price_zone"]
                entry = Dict{String,Any}()
                entry["cost_p"] = [x["cost_p_1"], x["cost_p_2"], x["cost_p_3"]]
                entry["cost_q"] = [x["cost_q_1"], x["cost_q_2"], x["cost_q_3"]]
                entry["min_cost"], entry["constant_p"] = x["min_cost"], x["constant_p"]
                ref[:nw][parse(Int, n)][:price_zone][x["id"]] = entry
            end
        end
    end
end

"Assign generator indices to delivery entries for easy access."
function _assign_delivery_generators!(gm::_GM.AbstractGasModel, pm::_PM.AbstractPowerModel)
    for (nw, network) in _GM.nws(pm)
        # Get the subset of "gen" items containing the "delivery" key.
        gens = filter(x -> haskey(x.second, "delivery"), _PM.ref(pm, nw, :gen))

        # Create a "gens" field for deliveries to store coupled generator indices.
        for (j, delivery) in _GM.ref(gm, nw, :delivery)
            gen_ids = keys(filter(x -> x.second["delivery"] == j, gens))
            delivery["gens"] = length(gen_ids) > 0 ? gen_ids : []
        end
    end
end
