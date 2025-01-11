script.on_event(defines.events.on_cargo_pod_finished_ascending, function(e)
    e.cargo_pod.destroy()
end
)

script.on_event(defines.events.on_research_finished, function(e)
    if e.research.name == "platform-creator" then
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
    end
end)

script.on_event(defines.events.on_player_changed_surface, function(e)
    player = game.players[e.player_index]
    oldSurfaceIndex = e.surface_index
    newSurfaceIndex = player.surface.index

    if(not storage.platformPlayerInventory) then
        storage.platformPlayerInventory = {}
    end
    if(not storage.platformPlayerInventory[oldSurfaceIndex]) then
        storage.platformPlayerInventory[oldSurfaceIndex] = {}
    end
    
    
    storage.platformPlayerInventory[oldSurfaceIndex][e.player_index] = player.character.get_main_inventory().get_contents()
    player.character.get_main_inventory().clear()

    if(storage.platformPlayerInventory ~= nil and storage.platformPlayerInventory[newSurfaceIndex] ~= nil and storage.platformPlayerInventory[newSurfaceIndex][e.player_index]  ~= nil) then
        for _, item in pairs(storage.platformPlayerInventory[newSurfaceIndex][e.player_index]) do 
            player.character.insert({name = item.name, count = item.count}) 
        end
    end

    player.teleport({ x = 0, y = 0 }, game.surfaces[newSurfaceIndex])
end)