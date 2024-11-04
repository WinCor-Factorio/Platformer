-- Disable all technologies
-- for _, tech in pairs(data.raw.technology) do
--     tech.enabled = false
-- end

-- modify technologies
table.insert(data.raw.technology["electronics"].effects, {
    type = "unlock-recipe",
    recipe = "long-handed-inserter"
})

table.insert(data.raw.technology["space-platform"].effects, {
    type = "unlock-recipe",
    recipe = "advanced-metallic-asteroid-crushing"
})

-- Enable selected technologies
data.raw.technology["electronics"].enabled = true;
data.raw.technology["automation-science-pack"].enabled = true;
data.raw.technology["space-platform"].enabled = true

-- Altered Recipes
data.raw.recipe["space-platform-foundation"].ingredients = {
    { type = "item", name = "iron-plate", amount = 10 }
}

-- Enable starting items.
data.raw.recipe["electric-furnace"].enabled = true
data.raw.recipe["assembling-machine-1"].enabled = true
data.raw.recipe["inserter"].enabled = true
data.raw.recipe["solar-panel"].enabled = true
data.raw.recipe["steel-plate"].enabled = true
data.raw.recipe["space-platform-foundation"].enabled = true
