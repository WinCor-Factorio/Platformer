--Simple function to scan the provided technology and removed the desired effect.
local function remove_technology_effect(technology_name, effect_name)
    local technology = data.raw.technology[technology_name]
    for i, effect in pairs(technology.effects) do
        if effect.type == effect_name then
            table.remove(technology.effects, i)
        end
    end
end

--Simple function to scan the provided technology and removed the desired recipe unlock.
local function remove_technology_effect_recipe(technology_name, effect_name)
    local technology = data.raw.technology[technology_name]
    for i, effect in pairs(technology.effects) do
        if effect.type == "unlock-recipe" and effect.recipe == effect_name then
            table.remove(technology.effects, i)
        end
    end
end

--Remove Technology Effects
remove_technology_effect_recipe("advanced-material-processing", "steel-furnace");

remove_technology_effect_recipe("logistic-robotics", "roboport");
remove_technology_effect_recipe("logistic-robotics", "passive-provider-chest");
remove_technology_effect_recipe("logistic-robotics", "storage-chest");
remove_technology_effect_recipe("logistic-robotics", "logistic-robot");
remove_technology_effect("logistic-robotics", "character-logistic-requests");
remove_technology_effect("logistic-robotics", "character-logistic-trash-slots");

remove_technology_effect("uranium-mining", "mining-with-fluid");

remove_technology_effect_recipe("rocket-silo", "rocket-silo");
remove_technology_effect_recipe("rocket-silo", "rocket-part");
remove_technology_effect_recipe("rocket-silo", "cargo-landing-pad");
remove_technology_effect_recipe("rocket-silo", "space-platform-starter-pack");
remove_technology_effect_recipe("rocket-silo", "space-platform-foundation");
remove_technology_effect("rocket-silo", "unlock-space-platforms");

remove_technology_effect_recipe("asteroid-reprocessing", "metallic-asteroid-reprocessing");
remove_technology_effect_recipe("asteroid-reprocessing", "oxide-asteroid-reprocessing");
remove_technology_effect_recipe("asteroid-reprocessing", "carbonic-asteroid-reprocessing");

--automation-science-pack
data.raw.technology["automation-science-pack"].research_trigger =
{
    type = "craft-item",
    item = "iron-plate",
    count = 100
}

data.raw.technology["solar-energy"].unit.time = 10
data.raw.technology["solar-energy"].unit.count = 30


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
data.raw.technology["space-science-pack"].effects = {
    {
        type = "unlock-recipe",
        recipe = "space-science-pack"
    },
    {
        type = "unlock-recipe",
        recipe = "carbon"
    },
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
    },
    {
        type = "create-ghost-on-entity-death",
        modifier = true
    },
    {
        type = "unlock-space-platforms",
        modifier = true,
        hidden = true
    },
}

data.raw.technology["space-platform"].prerequisites = {}

data.raw.technology["oil-processing"].research_trigger = {
    type = "craft-item",
    item = "crude-oil-sludge",
    count = 1
}
table.insert(data.raw.technology["oil-processing"].effects, { type = "unlock-recipe", recipe = "oil_sludge_processing" })

data.raw.technology["oil-gathering"].effects = { {
    type = "unlock-recipe",
    recipe = "crudeic-asteroid-crushing"
} };

data.raw.technology["advanced-asteroid-processing"].effects = {
    {
        type = "unlock-recipe",
        recipe = "advanced-thruster-fuel"
    },
    {
        type = "unlock-recipe",
        recipe = "advanced-thruster-oxidizer"
    }
}

data.raw.technology["planet-discovery-fulgora"].effects = {
    {
        type = "unlock-space-location",
        space_location = "fulgora",
        use_icon_overlay_constant = true
    },
    {
        type = "unlock-recipe",
        recipe = "fulgora-asteroid-crushing"
    }
}
data.raw.technology["planet-discovery-gleba"].effects = {
    {
        type = "unlock-space-location",
        space_location = "gleba",
        use_icon_overlay_constant = true
    },
    {
        type = "unlock-recipe",
        recipe = "gleba-asteroid-crushing"
    }
}
data.raw.technology["planet-discovery-vulcanus"].effects = {
    {
        type = "unlock-space-location",
        space_location = "vulcanus",
        use_icon_overlay_constant = true
    },
    {
        type = "unlock-recipe",
        recipe = "vulcanus-asteroid-crushing"
    },
    {
        type = "unlock-recipe",
        recipe = "lava_stone_processing"
    },
    {
        type = "unlock-recipe",
        recipe = "lava_stone_to_coal"
    }
}
data.raw.technology["planet-discovery-aquilo"].effects = {
    {
        type = "unlock-space-location",
        space_location = "aquilo",
        use_icon_overlay_constant = true
    },
    {
        type = "unlock-recipe",
        recipe = "aquilo-asteroid-crushing"
    }
}
data.raw.technology["agriculture"].research_trigger = nil
data.raw.technology["agriculture"].unit =
{
    ingredients =
    {
        { "automation-science-pack", 1 },
        { "logistic-science-pack",   1 },
        { "chemical-science-pack",   1 },
        { "space-science-pack",      1 }
    },
    time = 60,
    count = 400
}
data.raw.technology["calcite-processing"].research_trigger = {
    type = "craft-item",
    item = "calcite",
    count = 10
}
data.raw.technology["heating-tower"].research_trigger = nil
data.raw.technology["heating-tower"].unit =
{
    ingredients =
    {
        { "automation-science-pack", 1 },
        { "logistic-science-pack",   1 },
        { "chemical-science-pack",   1 },
        { "space-science-pack",      1 }
    },
    time = 60,
    count = 100
}
data.raw.technology["jellynut"].research_trigger = {
    type = "craft-item",
    item = "jellynut",
    count = 100
}
data.raw.technology["yumako"].research_trigger = {
    type = "craft-item",
    item = "yumako",
    count = 100
}
data.raw.technology["tungsten-carbide"].research_trigger = {
    type = "craft-item",
    item = "tungsten-ore",
    count = 100
}
data.raw.technology["tungsten-steel"].research_trigger = {
    type = "craft-item",
    item = "tungsten-ore",
    count = 300
}
data.raw.technology["lithium-processing"].research_trigger = {
    type = "craft-item",
    item = "lithium-ore",
    count = 300
}

data.raw.technology["space-platform-thruster"].effects = {
    {
        type = "unlock-recipe",
        recipe = "thruster"
    },
    {
        type = "unlock-recipe",
        recipe = "thruster-fuel"
    },
    {
        type = "unlock-recipe",
        recipe = "thruster-oxidizer"
    }
}

data.raw.technology["tungsten-carbide"].effects = {
    {
        type = "unlock-recipe",
        recipe = "tungsten-carbide"
    }
}

data.raw.technology["engine"].effects = {
    {
        type = "unlock-recipe",
        recipe = "engine-unit"
    },
    {
        type = "unlock-recipe",
        recipe = "pipe-to-ground"
    },
    {
        type = "unlock-recipe",
        recipe = "pipe"
    }
}

data.raw.technology["steam-power"].effects = {
    {
        type = "unlock-recipe",
        recipe = "boiler"
    },
    {
        type = "unlock-recipe",
        recipe = "steam-engine"
    }
}
data.raw.technology["steam-power"].prerequisites = { "water-processing" }
data.raw.technology["steam-power"].research_trigger = nil
data.raw.technology["steam-power"].unit =
{
    ingredients =
    {
        { "automation-science-pack", 1 },
        { "logistic-science-pack",   1 },
    },
    time = 60,
    count = 200
}

data.raw.technology["recycling"].research_trigger = {
    type = "craft-item",
    item = "scrap",
    count = 100
}

data.raw.technology["uranium-mining"].effects = {
    {
        type = "unlock-recipe",
        recipe = "uranium_extraction"
    }
}
data.raw.technology["uranium-mining"].localised_description = ""

data.raw.technology["uranium-processing"].research_trigger = {
    type = "craft-item",
    item = "uranium-ore",
    count = 1
}
