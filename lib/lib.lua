platformer = {}

platformer.helpers = {}
platformer.helpers.tablelength = function(T)
    local count = 0
    if T ~= nil then
        for _ in pairs(T) do count = count + 1 end
    end
    return count
end

platformer.helpers.create_space_platform = function()
    local force = game.forces["player"]
    platform = force.create_space_platform({
        name = "Base One",
        planet = "nauvis",
        starter_pack = "space-platform-starter-pack"
    })

    if not platform then
        error("The platform was not initiated properly")
    end

    platform.apply_starter_pack()

    return platform
end

platformer.helpers.setupNewPlayerPlatform = function(player)    
    platform = platformer.helpers.create_space_platform()
    set_starting_items(platform)

    player.teleport({ x = 0, y = 0 }, platform.surface.name)
end

function set_starting_items(platform)
    local hub = platform.hub
    if hub then
        hub.insert({ name = "crusher", count = 1 })
        hub.insert({ name = "asteroid-collector", count = 1 })
        hub.insert({ name = "assembling-machine-1", count = 2 })
        hub.insert({ name = "inserter", count = 10 })
        hub.insert({ name = "solar-panel", count = 10 })
        hub.insert({ name = "space-platform-foundation", count = 100 })
        hub.insert({ name = "electric-furnace", count = 4 })
        --hub.insert({ name = "transport-belt", count = 100 })
    end
end

require("__platformer__/lib/recipe.lua")
require("__platformer__/lib/technology.lua")