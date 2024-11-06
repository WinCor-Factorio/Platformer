local itemName = "hub-chest"
local graphics = "__Platformer__/graphics/hub-chest"

local item_count = 0
for _, item in pairs(data.raw.item) do -- all placeable items
    if item.place_result ~= nil
        or item.place_as_tile ~= nil
    then
        item_count = item_count + 1
        print(item.name)
    end
end

for _, item in pairs(data.raw["repair-tool"]) do
    item_count = item_count + 1
    print(item.name)
end

-- Entity
local entity = table.deepcopy(data.raw["container"]["steel-chest"])
entity.name = itemName
entity.inventory_size = item_count + 1; -- +1 for counting itself aswell.
entity.inventory_type = "with_filters_and_bar"
entity.minable.result = "hub-chest"
entity.icon = graphics .. "/icon/voidchest.png"
entity.icon_size = 64
entity.surface_conditions = { { min = 0, max = 0, property = "gravity" } }
entity.open_sound = nil
entity.picture =
{
    layers =
    {
        {
            filename = graphics .. "/voidchest.png",
            priority = "extra-high",
            width = 33,
            height = 37,
            shift = util.by_pixel(0, -2),
            hr_version =
            {
                filename = graphics .. "/hr-voidchest.png",
                priority = "extra-high",
                width = 66,
                height = 74,
                shift = util.by_pixel(0, -2),
                scale = 0.5
            }
        },
        {
            filename = graphics .. "/voidchest-shadow.png",
            priority = "extra-high",
            width = 56,
            height = 24,
            shift = util.by_pixel(12, 5),
            draw_as_shadow = true,
            hr_version =
            {
                filename = graphics .. "/hr-voidchest-shadow.png",
                priority = "extra-high",
                width = 112,
                height = 46,
                shift = util.by_pixel(12, 4.5),
                draw_as_shadow = true,
                scale = 0.5
            }
        }
    }
}

-- Item
local item = table.deepcopy(data.raw["item"]["steel-chest"])
item.icon = graphics .. "/icon/voidchest.png"
item.name = itemName
item.place_result = "hub-chest"

-- Recipe
local recipe = table.deepcopy(data.raw.recipe["steel-chest"])
recipe.name = itemName
recipe.results = {
    { type = "item", name = itemName, amount = 1 }
}
recipe.ingredients = {
    { type = "item", name = "steel-chest",        amount = 1 },
    { type = "item", name = "electronic-circuit", amount = 1 }
}
recipe.allow_quality = false
recipe.factoriopedia_description =
"A limited chest linked to the space platform hub. Items inserted into this chest will be teleported to the hub instantly."

-- Technology
local technology = table.deepcopy(data.raw.technology["steel-processing"])
technology.name = itemName
technology.effects = {
    {
        type   = "unlock-recipe",
        recipe = itemName
    }
}
technology.prerequisites = nil;
technology.icon = graphics .. "/hr-voidchest-technology.png"
technology.icon_size = 256
technology.unit =
{
    count_formula = "500",
    ingredients =
    {
        { "automation-science-pack", 1 },
    },
    time = 60
}


data:extend { entity, item, recipe, technology }
