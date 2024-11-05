script.on_event(defines.events.on_player_respawned, function(e)
    local player = game.players[e.player_index]
    local platform = storage.platform

    if platform.valid then
        player.enter_space_platform(platform)
    else
        player.character.destroy()
        player.spectator = true
    end
end)

script.on_event(defines.events.on_entity_died, function(e)
    local platform = storage.platform

    if e.entity.unit_number == platform.hub.unit_number then
        for _, player in pairs(game.players) do
            if player.character then
                player.character.destroy()
            end
            player.spectator = true;
        end
        game.print("You lost. Try again")
    end
end)
