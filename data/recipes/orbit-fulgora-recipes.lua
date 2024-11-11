-- Fulgora chunck processing
local fulgora_chunck = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
fulgora_chunck.name = "fulgora-asteroid-crushing"
fulgora_chunck.localised_name = { "recipe-name.fulgora-asteroid-crushing" }
fulgora_chunck.icon = "__base__/graphics/icons/coin.png"
fulgora_chunck.enabled = false
fulgora_chunck.ingredients =
{
    { type = "item", name = "fulgora-asteroid-chunk", amount = 1 }
}
fulgora_chunck.results =
{
    { type = "item", name = "scrap", amount_min = 1, amount_max = 10 },
}
data.extend({ fulgora_chunck })
