local thePlatform

script.on_init(function()
    DisableCutsceene()

    local force = game.forces["player"]
    thePlatform = force.create_space_platform({
        name = "Base One",
        planet = "void",
        starter_pack = "space-platform-starter-pack"
    })

    if not thePlatform then
        error("The platform was not initiated properly")
    end

    thePlatform.apply_starter_pack()
end)

script.on_event(defines.events.on_player_created, function(e)
    game.players[e.player_index].enter_space_platform(thePlatform)
end)

function DisableCutsceene()
    if remote.interfaces.freeplay then
        if remote.interfaces.freeplay.set_disable_crashsite then
            remote.call("freeplay", "set_disable_crashsite", true)
        end
    end
end
