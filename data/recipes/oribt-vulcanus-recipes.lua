-- Vulcanus chunk processing
local vulcanus_chunk = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
vulcanus_chunk.name = "vulcanus-asteroid-crushing"
vulcanus_chunk.localised_name = { "recipe-name.vulcanus-asteroid-crushing" }
vulcanus_chunk.icon = "__platformer__/graphics/icons/vulcanus-asteroid-crushing.png"
vulcanus_chunk.enabled = false
vulcanus_chunk.ingredients =
{
    { type = "item", name = "vulcanus-asteroid-chunk", amount = 1 }
}
vulcanus_chunk.results =
{
    { type = "item", name = "tungsten-ore", amount_min = 1, amount_max = 10 },
    { type = "item", name = "lava-stone",   amount_min = 1, amount_max = 10 },
    { type = "item", name = "calcite",      amount_min = 1, amount_max = 5 },
    { type = "item", name = "stone",        amount = 1 },

}
data.extend({ vulcanus_chunk })

-- Lava-stone to lava
local lava_stone_processing = table.deepcopy(data.raw.recipe["thruster-oxidizer"])
lava_stone_processing.name = "lava-stone-processing"
lava_stone_processing.localised_name = { "recipe-name.lava-stone-processing" }
lava_stone_processing.icon = "__space-age__/graphics/icons/fluid/lava.png"
lava_stone_processing.enabled = false
lava_stone_processing.subgroup = "fluid-recipes"
lava_stone_processing.ingredients =
{
    { type = "item", name = "lava-stone", amount = 1 }
}
lava_stone_processing.results =
{
    { type = "fluid", name = "lava",          amount = 15 },
    { type = "fluid", name = "sulfuric-acid", amount = 5 }
}
data.extend({ lava_stone_processing })

local lava_stone_to_carbon = table.deepcopy(data.raw.recipe["copper-cable"])
lava_stone_to_carbon.name = "lava-stone-to-coal"
lava_stone_to_carbon.localised_name = { "recipe-name.lava-stone-to-carbon" }
lava_stone_to_carbon.icon = "__space-age__/graphics/icons/carbon.png"
lava_stone_to_carbon.enabled = false
lava_stone_to_carbon.order = "m"
lava_stone_to_carbon.ingredients =
{
    { type = "item",  name = "lava-stone", amount = 1 },
    { type = "fluid", name = "water",      amount = 10 },
}
lava_stone_to_carbon.results =
{
    { type = "item", name = "carbon", amount = 4 },
}
data.extend({ lava_stone_to_carbon })



-- Vulcanus Asteroid Chunk Recycle
local vulcanus_asteroid_chunk_recycling = table.deepcopy(data.raw.recipe["metallic-asteroid-chunk-recycling"])
vulcanus_asteroid_chunk_recycling.enabled = true
vulcanus_asteroid_chunk_recycling.name = "vulcanus-asteroid-chunk-recycling"
vulcanus_asteroid_chunk_recycling.localised_name = { "recipe-name.vulcanus-asteroid-chunk-recycling" }
vulcanus_asteroid_chunk_recycling.ingredients = {
    {type = "item", name = "vulcanus-asteroid-chunk", amount = 1}
}
vulcanus_asteroid_chunk_recycling.results = {
    {type = "item", name = "vulcanus-asteroid-chunk", amount = 0, extra_count_fraction = 0.25}
}

data.extend({ vulcanus_asteroid_chunk_recycling })