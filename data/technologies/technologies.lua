require("__platformer__/data/technologies/disabled-technologies.lua")
require("__platformer__/data/technologies/modified-technologies.lua")
require("__platformer__/data/technologies/new-technologies.lua")

-- Enable selected technologies
data.raw.technology["space-platform"].enabled = true;
platformer.technology.prune_all()


data:extend({
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
                { "production-science-pack", 1 },
                { "utility-science-pack",    1 },
                { "space-science-pack",      1 }
            },
            time = 60
        },
        order = "c-a"
    }
})