-- Crude oil chunk processing
local crude_chunk = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
crude_chunk.name = "crudeic-asteroid-crushing"
crude_chunk.localised_name = { "recipe-name.crudeic-asteroid-crushing" }
crude_chunk.icon = "__platformer__/graphics/icons/crudeic-asteroid-crushing.png"
crude_chunk.enabled = false
crude_chunk.ingredients =
{
    { type = "item", name = "crudeic-asteroid-chunk", amount = 1 }
}
crude_chunk.results =
{
    { type = "item", name = "crude-oil-sludge", amount_min = 1, amount_max = 3 },
    { type = "item", name = "coal",             amount_min = 1, amount_max = 3 },
}
data.extend({ crude_chunk })


-- crude-oil-sludge to crude oil
local oil_sludge_processing = table.deepcopy(data.raw.recipe["thruster-oxidizer"])
oil_sludge_processing.name = "oil_sludge_processing"
oil_sludge_processing.localised_name = { "recipe-name.oil_sludge_processing" }
oil_sludge_processing.icon = "__base__/graphics/icons/fluid/crude-oil.png"
oil_sludge_processing.enabled = false
oil_sludge_processing.subgroup = "fluid-recipes"
oil_sludge_processing.ingredients =
{
    { type = "item", name = "crude-oil-sludge", amount = 1 }
}
oil_sludge_processing.results =
{
    { type = "fluid", name = "crude-oil", amount = 10 },
}
data.extend({ oil_sludge_processing })
