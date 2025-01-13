require("__platformer__/data/prototypes/asteroids/aquilo-asteroid.lua")
require("__platformer__/data/prototypes/asteroids/crudeic-asteroid.lua")
require("__platformer__/data/prototypes/asteroids/fulgora-asteroid.lua")
require("__platformer__/data/prototypes/asteroids/gleba-asteroid.lua")
require("__platformer__/data/prototypes/asteroids/vulcanus-asteroid.lua")

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

local start_pack = data.raw["space-platform-starter-pack"]["space-platform-starter-pack"]

table.insert(start_pack.initial_items, {
    type="item",
    name="orbital-transfer-requester",
    amount=1
})

require("__platformer__/data/prototypes/tips-and-tricks.lua")