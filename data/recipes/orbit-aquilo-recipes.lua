-- aquilo chunk processing
local aquilo_chunk = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
aquilo_chunk.name = "aquilo-asteroid-crushing"
aquilo_chunk.localised_name = { "recipe-name.aquilo-asteroid-crushing" }
aquilo_chunk.icon = "__space-age__/graphics/icons/oxide-asteroid-crushing.png"
aquilo_chunk.enabled = false
aquilo_chunk.ingredients =
{
    { type = "item", name = "aquilo-asteroid-chunk", amount = 1 }
}
aquilo_chunk.results =
{
    { type = "item", name = "cryolitic-ore", amount_min = 1, amount_max = 5 },
    { type = "item", name = "lithium-salt",   amount_min = 1, amount_max = 5 },
    { type = "item", name = "stone",         amount = 1 },
}
data.extend({ aquilo_chunk })

-- Lava-stone to lava
local lithium_salt_processing = table.deepcopy(data.raw.recipe["thruster-oxidizer"])
lithium_salt_processing.name = "lithium-salt-processing"
lithium_salt_processing.localised_name = { "recipe-name.lithium-salt-processing" }
lithium_salt_processing.icon = "__space-age__/graphics/icons/fluid/lithium-brine.png"
lithium_salt_processing.enabled = false
lithium_salt_processing.subgroup = "fluid-recipes"
lithium_salt_processing.ingredients =
{
    { type = "item", name = "lithium-salt", amount = 1 },
    { type = "fluid", name = "water", amount = 10 },
}
lithium_salt_processing.results =
{
    { type = "fluid", name = "lithium-brine",          amount = 15 }
}
data.extend({ lithium_salt_processing })