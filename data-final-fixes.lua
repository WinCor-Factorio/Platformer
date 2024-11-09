require("__platformer__/data/recipes.lua")
require("__platformer__/data/technologies.lua")

-- Disable all technologies
-- for _, tech in pairs(data.raw.technology) do
--     tech.enabled = false
-- end

-- Enable starting items.
data.raw.recipe["electric-furnace"].enabled = true
data.raw.recipe["assembling-machine-1"].enabled = true
data.raw.recipe["inserter"].enabled = true
data.raw.recipe["solar-panel"].enabled = true
data.raw.recipe["steel-plate"].enabled = true
data.raw.recipe["space-platform-foundation"].enabled = true
