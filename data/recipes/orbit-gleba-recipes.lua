-- Gleba chunck processing
local gleba_chunck = table.deepcopy(data.raw.recipe["metallic-asteroid-crushing"])
gleba_chunck.name = "gleba-asteroid-crushing"
gleba_chunck.localised_name = { "recipe-name.gleba-asteroid-crushing" }
gleba_chunck.icon = "__space-age__/graphics/icons/carbonic-asteroid-crushing.png"
gleba_chunck.enabled = false
gleba_chunck.ingredients =
{
    { type = "item", name = "gleba-asteroid-chunk", amount = 1 }
}
gleba_chunck.results =
{
    { type = "item", name = "yumako",       amount_min = 1, amount_max = 5 },
    { type = "item", name = "jellynut",     amount_min = 1, amount_max = 5 },
    { type = "item", name = "pentapod-egg", amount = 1,     probability = 0.05 },
}
data.extend({ gleba_chunck })
