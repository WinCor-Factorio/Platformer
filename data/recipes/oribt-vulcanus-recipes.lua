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
    { type = "item", name = "tungsten-ore", amount = 1,     probability = 0.1 },
    { type = "item", name = "lava-stone",   amount_min = 1, amount_max = 2 },
    { type = "item", name = "calcite",      amount_min = 1, amount_max = 10 },

}
data.extend({ vulcanus_chunk })

-- Lava-stone to lava
local lava_stone_processing = table.deepcopy(data.raw.recipe["thruster-oxidizer"])
lava_stone_processing.name = "lava_stone_processing"
lava_stone_processing.localised_name = { "recipe-name.lava_stone_processing" }
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
