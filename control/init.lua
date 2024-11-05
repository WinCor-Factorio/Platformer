script.on_init(function()
    DisableCutsceene()
    create_space_platform()
    set_starting_items()
    research_starting_technologies()
end)

script.on_event(defines.events.on_player_created, function(e)
    game.players[e.player_index].enter_space_platform(storage.platform)
end)

function create_space_platform()
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
end

function set_starting_items()
    local hub = storage.platform.hub
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

function research_starting_technologies()
    game.forces["player"].technologies["space-platform"].researched = true;
end

function DisableCutsceene()
    if remote.interfaces.freeplay then
        if remote.interfaces.freeplay.set_disable_crashsite then
            remote.call("freeplay", "set_disable_crashsite", true)
        end
    end
end
