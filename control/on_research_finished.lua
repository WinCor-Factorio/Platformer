storage.enable_crud_oil = false
storage.tick_crud_oil = 100

script.on_event(defines.events.on_research_finished, function(event)
    local technology = event.research
    if technology.name == "oil-gathering" then
        storage.enable_crud_oil = true
    end
end)

script.on_nth_tick(storage.tick_crud_oil, function (event)
    if storage.enable_crud_oil then
        game.surfaces[2].platform.create_asteroid_chunks({{
            name = "crudeic-asteroid-chunk", 
            position = {0,-100},
            movement = {0, 0.1}
        }})
    end
end)