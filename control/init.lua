script.on_init(function(e)
    setupStorageVariables()
    disable_cutsceene()
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

    platformer.helpers.setupNewPlayerPlatform(player)

    storage.platformPrevIndex[e.player_index] = -1
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

--Regenerate the tech tree any time anything could have changed the tech tree.
script.on_configuration_changed(function()
    for _, force in pairs(game.forces) do
        for _, technology in pairs(force.technologies) do
            technology.reload()
            technology.enabled = technology.prototype.enabled --This seems gross but it is absolutely required as nothing else works.
        end

        force.reset_recipes()
        force.reset_technologies()
        force.reset_technology_effects()
    end

    setupStorageVariables()
end)

function setupStorageVariables()
    if(not storage.platformPrevIndex) then
        storage.platformPrevIndex = {}
    end

    for playerIndex, player in pairs(game.players) do
        storage.platformPrevIndex[playerIndex] = player.surface.index
    end

    if( not storage.platformPlayerInventory) then
        storage.platformPlayerInventory = {}
    end

    if(not storage.platformResearch) then
        storage.platformResearch = {}
    end

    if(not storage.platformResearch["platform-creator"]) then
        storage.platformResearch["platform-creator"] = {}
    end
end

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

function disable_cutsceene()
    if remote.interfaces.freeplay then
        if remote.interfaces.freeplay.set_disable_crashsite then
            remote.call("freeplay", "set_disable_crashsite", true)
        end
    end
end
