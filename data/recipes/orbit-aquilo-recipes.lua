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
    { type = "item", name = "lithium-ore",   amount_min = 1, amount_max = 5 },
    { type = "item", name = "stone",         amount = 1 },
}
data.extend({ aquilo_chunk })
