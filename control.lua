local hub
local platform

script.on_init(function()
    DisableCutsceene()

    local force = game.forces["player"]
    platform = force.create_space_platform({
        name = "Base One",
        planet = "void",
        starter_pack = "space-platform-starter-pack"
    })

    if not platform then
        error("The platform was not initiated properly")
    end
    platform.apply_starter_pack()

    storage.platform = platform

    init_hub()
    set_starting_items()

    game.forces["player"].technologies["space-platform"].researched = true;
end)

function set_starting_items()
    if hub then
        hub.insert({ name = "crusher", count = 2 })
        hub.insert({ name = "asteroid-collector", count = 4 })
        hub.insert({ name = "assembling-machine-1", count = 10 })
        hub.insert({ name = "inserter", count = 50 })
        hub.insert({ name = "solar-panel", count = 5 })
        hub.insert({ name = "space-platform-foundation", count = 990 })
        hub.insert({ name = "electric-furnace", count = 4 })
        hub.insert({ name = "transport-belt", count = 100 })
    end
end

function init_hub()
    platform = storage.platform
    hub = storage.platform.hub
end

script.on_load(function()
    init_hub()
end)

script.on_event(defines.events.on_player_created, function(e)
    game.players[e.player_index].enter_space_platform(platform)
end)

script.on_event(defines.events.on_player_respawned, function(e)
    local player = game.players[e.player_index]

    if platform.valid then
        player.enter_space_platform(platform)
    else
        player.character.destroy()
        player.spectator = true
    end
end)

script.on_event(defines.events.on_entity_died, function(e)
    if e.entity.unit_number == hub.unit_number then
        for _, player in pairs(game.players) do
            if player.character then
                player.character.destroy()
            end
            player.spectator = true;
        end
        game.print("You lost. Try again")
    end
end)

function DisableCutsceene()
    if remote.interfaces.freeplay then
        if remote.interfaces.freeplay.set_disable_crashsite then
            remote.call("freeplay", "set_disable_crashsite", true)
        end
    end
end
