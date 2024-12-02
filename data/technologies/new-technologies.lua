data:extend({
    {
        type = "technology",
        name = "water-processing",
        icon_size = 1024,
        icon = "__platformer__/graphics/technology/ice-melting-transformed.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "ice-melting"
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
