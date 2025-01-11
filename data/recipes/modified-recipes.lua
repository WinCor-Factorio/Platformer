for key, itemArray in pairs(data.raw.recipe) do
    data.raw.recipe[key].surface_conditions = {}
end

data.raw.recipe["space-platform-foundation"].ingredients = {
    { type = "item", name = "iron-plate",   amount = 10 },
    { type = "item", name = "copper-cable", amount = 5 }
}
data.raw.recipe["space-platform-foundation-recycling"].results = {
    {
        type = "item", name = "iron-plate", amount = 2, extra_count_fraction = 0.5
    },
    {
        type = "item", name = "copper-cable", amount = 1, extra_count_fraction = 0.25
    }
}

data.raw.recipe["electric-furnace"].ingredients = {
    { type = "item", name = "iron-plate",         amount = 60 },
    { type = "item", name = "electronic-circuit", amount = 5 },
    { type = "item", name = "stone-brick",        amount = 10 }
}
data.raw.recipe["electric-furnace-recycling"].results = {
    {
        type = "item", name = "iron-plate", amount = 15
    },
    {
        type = "item", name = "electronic-circuit", amount = 1, extra_count_fraction = 0.25
    },
    {
        type = "item", name = "stone-brick", amount = 2, extra_count_fraction = 0.5
    }
}

data.raw.recipe["metallic-asteroid-crushing"].results = {
    { type = "item", name = "iron-ore",   amount_min = 5, amount_max = 20 },
    { type = "item", name = "copper-ore", amount_min = 1, amount_max = 5 },
    { type = "item", name = "stone",      amount = 1 }
}
data.raw.recipe["metallic-asteroid-crushing"].icon = "__platformer__/graphics/icons/metallic-asteroid-crushing.png"
data.raw.recipe["metallic-asteroid-crushing"].order = "a-a-a"
data.raw.recipe["metallic-asteroid-crushing"].energy_required = 5

data.raw.recipe["advanced-metallic-asteroid-crushing"].results = {
    { type = "item", name = "iron-ore",   amount_min = 1, amount_max = 5 },
    { type = "item", name = "copper-ore", amount_min = 5, amount_max = 20 },
    { type = "item", name = "stone",      amount = 1 }
}
data.raw.recipe["advanced-metallic-asteroid-crushing"].icon = "__platformer__/graphics/icons/advanced-metallic-asteroid-crushing.png"
data.raw.recipe["advanced-metallic-asteroid-crushing"].order = "a-a-a"
data.raw.recipe["advanced-metallic-asteroid-crushing"].energy_required = 5

data.raw.recipe["crusher"].ingredients = {
    { type = "item", name = "steel-plate",     amount = 10 },
    { type = "item", name = "engine-unit",     amount = 10 },
    { type = "item", name = "iron-gear-wheel", amount = 20 }
}
data.raw.recipe["crusher-recycling"].results = {
    {
        type = "item", name = "steel-plate", amount = 2, extra_count_fraction = 0.5
    },
    {
        type = "item", name = "engine-unit", amount = 2, extra_count_fraction = 0.5
    },
    {
        type = "item", name = "iron-gear-wheel", amount = 5
    }
}

data.raw.recipe["asteroid-collector"].ingredients = {
    { type = "item", name = "electronic-circuit",   amount = 20 },
    { type = "item", name = "engine-unit",          amount = 8 },
    { type = "item", name = "long-handed-inserter", amount = 2 }
}
data.raw.recipe["asteroid-collector-recycling"].results = {

    {
        type = "item", name = "electronic-circuit", amount = 5
    },
    {
        type = "item", name = "engine-unit", amount = 2
    },
    {
        type = "item", name = "long-handed-inserter", amount = 0, extra_count_fraction = 0.5
    }
}

data.raw.recipe["scrap-recycling"].results = {
    { type = "item", name = "processing-unit",       amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false },
    { type = "item", name = "advanced-circuit",      amount = 1, probability = 0.03, show_details_in_recipe_tooltip = false },
    { type = "item", name = "low-density-structure", amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false },
    { type = "item", name = "solid-fuel",            amount = 1, probability = 0.07, show_details_in_recipe_tooltip = false },
    { type = "item", name = "steel-plate",           amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false },
    { type = "item", name = "concrete",              amount = 1, probability = 0.06, show_details_in_recipe_tooltip = false },
    { type = "item", name = "battery",               amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false },
    { type = "item", name = "ice",                   amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false },
    { type = "item", name = "stone",                 amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false },
    { type = "item", name = "holmium-ore",           amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false },
    { type = "item", name = "iron-gear-wheel",       amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false },
    { type = "item", name = "copper-cable",          amount = 1, probability = 0.03, show_details_in_recipe_tooltip = false },
    { type = "item", name = "carbon",                amount = 1, probability = 0.03, show_details_in_recipe_tooltip = false }
}
data.raw.recipe["captive-biter-spawner"].ingredients = {
    { type = "item",  name = "uranium-235",          amount = 15 },
    { type = "item",  name = "capture-robot-rocket", amount = 1 },
    { type = "fluid", name = "fluoroketone-cold",    amount = 100 }
}

data.raw.recipe["thruster-oxidizer"].ingredients = {
    { type = "item",  name = "iron-plate", amount = 2 },
    { type = "fluid", name = "water",      amount = 10 },
}

data.raw.recipe["advanced-thruster-oxidizer"].ingredients = {
    { type = "item",  name = "iron-plate", amount = 2 },
    { type = "fluid", name = "water",      amount = 100 },
    { type = "item",  name = "calcite",    amount = 1 },
}

data.raw.recipe["productivity-module-3"].ingredients = {
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "uranium-235", amount = 2},
    {type = "item", name = "productivity-module-2", amount = 4}
}