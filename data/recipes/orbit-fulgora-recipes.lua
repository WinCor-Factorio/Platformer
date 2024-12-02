-- Fulgora chunk processing
local fulgora_chunk = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
fulgora_chunk.name = "fulgora-asteroid-crushing"
fulgora_chunk.localised_name = { "recipe-name.fulgora-asteroid-crushing" }
fulgora_chunk.icon = "__platformer__/graphics/icons/fulgora-asteroid-crushing.png"
fulgora_chunk.enabled = false
fulgora_chunk.ingredients =
{
    { type = "item", name = "fulgora-asteroid-chunk", amount = 1 }
}
fulgora_chunk.results =
{
    { type = "item", name = "scrap", amount_min = 1, amount_max = 10 },
}
data.extend({ fulgora_chunk })
