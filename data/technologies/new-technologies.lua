data:extend({
    {
        type = "technology",
        name = "water-processing",
        essential = true,
        icon_size = 1024,
        icon = "__platformer__/graphics/technology/ice-melting-transformed.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "ice-melting"
            },
            {
                type = "unlock-recipe",
                recipe = "oxide-asteroid-crushing"
            }
        },
        unit =
        {
            count = 100,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 }
            },
            time = 30
        },
        prerequisites = { "oil-processing" },
        order = "c-a"
    },
    {
        type = "technology",
        name = "advanced-metallic-asteroid-crushing",
        essential = false,
        icon_size = 256,
        icon = "__space-age__/graphics/technology/asteroid-reprocessing.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "advanced-metallic-asteroid-crushing"
            }
        },
        unit =
        {
            count = 2000,
            ingredients = {
                { "space-science-pack", 1},
                { "automation-science-pack", 1},
                { "logistic-science-pack", 1},
                { "chemical-science-pack", 1},
                { "production-science-pack", 1}
            },
            time = 30
        },
        prerequisites = { "space-science-pack" }
    },
    {
        type = "technology",
        name = "platform-creator",
        essential = true,
        icon_size = 64,
        icon = "__space-age__/graphics/icons/space-platform-hub.png",
        max_level = "infinite",
        unit =
        {
            count_formula="2^L*25",
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 },
                { "space-science-pack",      1 }
            },
            time = 60
        },
        order = "c-a",
        prerequisites = { "orbital-transfer" }
    }
})
