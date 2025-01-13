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
    { type = "item", name = "scrap", amount_min = 5, amount_max = 15 },
    { type = "item", name = "stone", amount = 1 },
}
data.extend({ fulgora_chunk })

-- Fulgora Asteroid Chunk Recycle
local fulgora_asteroid_chunk_recycling = table.deepcopy(data.raw.recipe["metallic-asteroid-chunk-recycling"])
fulgora_asteroid_chunk_recycling.enabled = true
fulgora_asteroid_chunk_recycling.name = "fulgora-asteroid-chunk-recycling"
fulgora_asteroid_chunk_recycling.localised_name = { "recipe-name.fulgora-asteroid-chunk-recycling" }
fulgora_asteroid_chunk_recycling.icon = "__platformer__/graphics/icons/fulgora-asteroid-chunk.png"
fulgora_asteroid_chunk_recycling.ingredients = {
    {type = "item", name = "fulgora-asteroid-chunk", amount = 1}
}
fulgora_asteroid_chunk_recycling.results = {
    {type = "item", name = "fulgora-asteroid-chunk", amount = 0, extra_count_fraction = 0.25}
}

data.extend({ fulgora_asteroid_chunk_recycling })