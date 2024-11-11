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

data.raw.technology["oil-processing"].research_trigger = {
    type = "craft-item",
    item = "crude-oil-sludge",
    count = 1
}

table.insert(data.raw.technology["oil-processing"].effects, { type = "unlock-recipe", recipe="oil_sludge_processing"})

data.raw.technology["steam-power"].effects = {};
data.raw.technology["electric-mining-drill"].effects = {};
data.raw.technology["flammables"].effects = {};
data.raw.technology["landfill"].effects = {};
data.raw.technology["advanced-material-processing"].effects = {};
data.raw.technology["automobilism"].effects = {};
data.raw.technology["oil-gathering"].effects = {};
data.raw.technology["stronger-explosives-1"].effects = {};
data.raw.technology["stronger-explosives-2"].effects = {};
data.raw.technology["railway"].effects = {};
data.raw.technology["electric-energy-distribution-1"].effects = {};
data.raw.technology["uranium-mining"].effects = {};
data.raw.technology["logistic-robotics"].effects = {};
data.raw.technology["rocket-silo"].effects = {};
data.raw.technology["tank"].effects = {};
data.raw.technology["planet-discovery-fulgora"].effects = {};
data.raw.technology["planet-discovery-gleba"].effects = {};
data.raw.technology["planet-discovery-vulcanus"].effects = {};
data.raw.technology["planet-discovery-aquilo"].effects = {};