-- Vulcanus chunck processing
local vulcanus_chunck = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
vulcanus_chunck.name = "vulcanus-asteroid-crushing"
vulcanus_chunck.localised_name = { "recipe-name.vulcanus-asteroid-crushing" }
vulcanus_chunck.icon = "__base__/graphics/icons/coin.png"
vulcanus_chunck.enabled = false
vulcanus_chunck.ingredients =
{
    { type = "item", name = "vulcanus-asteroid-chunk", amount = 1 }
}
vulcanus_chunck.results =
{
    { type = "item", name = "tungsten-ore", amount = 1,     probability = 0.1 },
    { type = "item", name = "lava-stone",   amount_min = 1, amount_max = 2 },
    { type = "item", name = "calcite",      amount_min = 1, amount_max = 10 },

}
data.extend({ vulcanus_chunck })