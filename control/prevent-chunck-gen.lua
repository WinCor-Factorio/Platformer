script.on_event(defines.events.on_chunk_generated, function(e)
    local area = e.area
    local left_top = area.left_top
    local right_bottom = area.right_bottom
    local surface = e.surface

    if string.find(surface.name, "platform") then
        return
    end

    for _, entity in pairs(surface.find_entities_filtered({ area = area, type = "tree" })) do
        entity.destroy()
    end
    for _, entity in pairs(surface.find_entities_filtered({ area = area, type = "simple-entity" })) do
        entity.destroy()
    end
    for _, entity in pairs(surface.find_entities_filtered({ area = area, type = "cliff" })) do
        entity.destroy()
    end
    surface.destroy_decoratives({ left_top, right_bottom })
    local tiles = {}
    for y = left_top.y, right_bottom.y do
        for x = left_top.x, right_bottom.x do
            table.insert(tiles, { name = "empty-space", position = { x, y } })
        end
    end
    surface.set_tiles(tiles, false)
end)
