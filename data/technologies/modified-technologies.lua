--automation-science-pack
data.raw.technology["automation-science-pack"].research_trigger =
{
    type = "craft-item",
    item = "iron-plate",
    count = 100
}

data.raw.technology["automation-science-pack"].prerequisites = { "electronics" }

--space-science-pack
data.raw.technology["space-science-pack"].research_trigger = nil
data.raw.technology["space-science-pack"].unit =
{
    ingredients =
    {
        { "automation-science-pack", 1 },
        { "logistic-science-pack",   1 },
        { "chemical-science-pack",   1 },
        { "production-science-pack", 1 }
    },
    time = 30,
    count = 1500
}
data.raw.technology["space-science-pack"].prerequisites =
{ "automation-science-pack",
    "logistic-science-pack",
    "chemical-science-pack",
    "production-science-pack"
}

--space-platform
data.raw.technology["space-platform"].effects = {
    {
        type = "unlock-recipe",
        recipe = "advanced-metallic-asteroid-crushing"
    },
    {
        type = "unlock-recipe",
        recipe = "asteroid-collector"
    },
    {
        type = "unlock-recipe",
        recipe = "crusher"
    },
    {
        type = "unlock-recipe",
        recipe = "cargo-bay"
    }
}
