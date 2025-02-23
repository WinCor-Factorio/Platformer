script.on_event(defines.events.on_cargo_pod_finished_ascending, function(e)
    e.cargo_pod.destroy()
end
)

script.on_event(defines.events.on_research_finished, function(e)
    if e.research.name == "platform-creator" and not storage.platformResearch[e.research.name][e.research.level] then
        platform = platformer.helpers.create_space_platform()
        storage.platformResearch[e.research.name][e.research.level] = true
    end
end)

script.on_nth_tick(20, function(e)
    for _, player in pairs(game.players) do
        if(player.get_main_inventory()) then
            if(not storage.platformPlayerInventory[player.surface.index]) then
                storage.platformPlayerInventory[player.surface.index] = {}
            end

            if(player.surface.index == storage.platformPrevIndex[player.index]) then
                if(storage.platformPlayerInventory[player.surface.index][player.index] ~= player.get_main_inventory().get_contents()) then
                    storage.platformPlayerInventory[player.surface.index][player.index] = player.get_main_inventory().get_contents()
                end
            else
                storage.platformPrevIndex[player.index] = player.surface.index
                player.get_main_inventory().clear()

                if(storage.platformPlayerInventory and storage.platformPlayerInventory[player.surface.index] and storage.platformPlayerInventory[player.surface.index][player.index]) then
                    for _, item in pairs(storage.platformPlayerInventory[player.surface.index][player.index]) do 
                        player.insert({name = item.name, count = item.count}) 
                    end
                end
            end
        end
    end
end)