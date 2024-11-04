platformer = {} -- stores globals.

script.on_init(function()
    DisableCutsceene()

    local force = game.forces["player"]
    local platform = force.create_space_platform({
        name = "Base One",
        planet = "void",
        starter_pack = "space-platform-starter-pack"
    })

    if not platform then
        error("The platform was not initiated properly")
    end

    platform.apply_starter_pack()

    platformer.platform = platform
    platformer.hub = platform.hub
end)

script.on_event(defines.events.on_player_created, function(e)
    game.players[e.player_index].enter_space_platform(platformer.platform)
end)

script.on_event(defines.events.on_player_respawned, function(e)
    local player = game.players[e.player_index]

    if platformer.platform.valid then
        player.enter_space_platform(platformer.platform)
    else
        player.character.destroy()
        player.spectator = true
    end
end)

script.on_event(defines.events.on_entity_died, function(e)
    if e.entity.unit_number == platformer.hub.unit_number then
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
