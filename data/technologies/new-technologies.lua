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
    }
})
