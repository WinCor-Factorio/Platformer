require("__platformer__/lib/lib.lua")

require("__platformer__/data/recipes/recipes.lua")
require("__platformer__/data/technologies/technologies.lua")
require("__platformer__/data/items/items.lua")

require("__platformer__/data/prototypes/planets/nauvis.lua")
require("__platformer__/data/prototypes/planets/vulcanus.lua")
require("__platformer__/data/prototypes/planets/fulgora.lua")
require("__platformer__/data/prototypes/planets/gleba.lua")
require("__platformer__/data/prototypes/planets/aquilo.lua")

require("__platformer__/data/prototypes/space-connections/nauvis-vulcanus.lua")
require("__platformer__/data/prototypes/space-connections/nauvis-fulgora.lua")
require("__platformer__/data/prototypes/space-connections/nauvis-gleba.lua")
require("__platformer__/data/prototypes/space-connections/gleba-fulgora.lua")
require("__platformer__/data/prototypes/space-connections/vulcanus-gleba.lua")
require("__platformer__/data/prototypes/space-connections/gleba-aquilo.lua")
require("__platformer__/data/prototypes/space-connections/fulgora-aquilo.lua")

for _, type_data in pairs(data.raw) do
    for _, item in pairs(type_data) do
        if item.surface_conditions ~= nil or item.surface_conditions then
            item.surface_conditions = nil
        end
    end
end