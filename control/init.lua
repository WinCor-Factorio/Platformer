script.on_init(function(e)
    disable_cutsceene()
    create_space_platform()
    set_starting_items()
    create_permission_group()
    shrink_the_world(game.surfaces[1])
    delete_all_chunks(game.surfaces[1])
end)

script.on_event(defines.events.on_player_created, function(e)
    local player = game.players[e.player_index]

    local group = game.permissions.get_group("players")
    if group then
        group.add_player(player)
    end

    if player.character ~= nil then
        player.character.destroy()
    end

    player.teleport({ x = 0, y = 0 }, storage.platform.surface.name)
end)

script.on_event(defines.events.on_surface_created, function(event)
    for _, planet in pairs(game.planets) do
        local surface = planet.surface
        if surface then
            if surface.index == event.surface_index then
                shrink_the_world(surface)
            else
            end
        else
        end
    end
end)

function delete_all_chunks(surface)
    for chunk in surface.get_chunks() do
        surface.delete_chunk({ chunk.x, chunk.y })
    end
end

function shrink_the_world(surface)
    local map_settings = { width = 1, height = 1 }
    surface.map_gen_settings = map_settings
end

function create_permission_group()
    local group = game.permissions.create_group("players")
    if group then
        group.set_allows_action(defines.input_action.land_at_planet, false)
    end
end

function create_space_platform()
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
    storage.platform = platform
end

function set_starting_items()
    local hub = storage.platform.hub
    if hub then
        hub.insert({ name = "crusher", count = 1 })
        hub.insert({ name = "asteroid-collector", count = 2 })
        hub.insert({ name = "assembling-machine-1", count = 10 })
        hub.insert({ name = "inserter", count = 50 })
        hub.insert({ name = "solar-panel", count = 10 })
        hub.insert({ name = "space-platform-foundation", count = 990 })
        hub.insert({ name = "electric-furnace", count = 4 })
        hub.insert({ name = "transport-belt", count = 100 })
    end
end

function disable_cutsceene()
    if remote.interfaces.freeplay then
        if remote.interfaces.freeplay.set_disable_crashsite then
            remote.call("freeplay", "set_disable_crashsite", true)
        end
    end
end
