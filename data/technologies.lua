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
