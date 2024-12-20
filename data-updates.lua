require("__platformer__/lib/lib.lua")

require("__platformer__/data/recipes/recipes.lua")
require("__platformer__/data/technologies/technologies.lua")
require("__platformer__/data/items/items.lua")

require("__platformer__/data/prototypes/planets/nauvis.lua")
require("__platformer__/data/prototypes/planets/vulcanus.lua")
require("__platformer__/data/prototypes/planets/fulgora.lua")
require("__platformer__/data/prototypes/planets/gleba.lua")
require("__platformer__/data/prototypes/planets/aquilo.lua")
require("__platformer__/data/prototypes/planets/solar-system-edge.lua")
require("__platformer__/data/prototypes/planets/shattered-planet.lua")

require("__platformer__/data/prototypes/space-connections/nauvis-vulcanus.lua")
require("__platformer__/data/prototypes/space-connections/nauvis-fulgora.lua")
require("__platformer__/data/prototypes/space-connections/nauvis-gleba.lua")
require("__platformer__/data/prototypes/space-connections/gleba-fulgora.lua")
require("__platformer__/data/prototypes/space-connections/vulcanus-gleba.lua")
require("__platformer__/data/prototypes/space-connections/gleba-aquilo.lua")
require("__platformer__/data/prototypes/space-connections/fulgora-aquilo.lua")
require("__platformer__/data/prototypes/space-connections/aquilo-solar-system-edge.lua")
require("__platformer__/data/prototypes/space-connections/solar-system-edge-shattered-planet.lua")

for _, type_data in pairs(data.raw) do
    for _, item in pairs(type_data) do
        if item.surface_conditions ~= nil or item.surface_conditions then
            item.surface_conditions = nil
        end 
    end
end

for entity_name in pairs(defines.prototypes.entity) do
    local entity_type = data.raw[entity_name]
    if(entity_type) then
        for _, entity in pairs(entity_type) do
            if(entity) then
                entity.is_military_target = true
            end
        end
    end
end