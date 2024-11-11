-- aquilo chunck processing
local aquilo_chunck = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
aquilo_chunck.name = "aquilo-asteroid-crushing"
aquilo_chunck.localised_name = { "recipe-name.vulcanus-asteroid-crushing" }
aquilo_chunck.icon = "__base__/graphics/icons/coin.png"
aquilo_chunck.enabled = false
aquilo_chunck.ingredients =
{
    { type = "item", name = "aquilo-asteroid-chunk", amount = 1 }
}
aquilo_chunck.results =
{
    { type = "item", name = "cryolitic-ore", amount_min = 1, amount_max = 5 },
    { type = "item", name = "lithium-ore",   amount_min = 1, amount_max = 5 },

}
data.extend({ aquilo_chunck })
