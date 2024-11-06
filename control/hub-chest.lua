script.on_event(defines.events.on_built_entity, function(e)
    local entity = e.entity
    if entity.name == "hub-chest" and entity.type == "container" then
        init_hub_chest_with_filters(entity)
    end
end)

script.on_event(defines.events.on_gui_opened, function(e)
    if e.entity and e.entity.name == "hub-chest" then
        local player = game.players[e.player_index]
        player.opened = nil
    end
end)

script.on_event({ defines.events.on_space_platform_mined_entity,
    defines.events.on_robot_mined_entity,
    defines.events.on_player_mined_entity }, function(e)
    if e.entity and e.entity.name == "hub-chest" then
        remove_entity_from_storage(e.entity)
    end
end)

-- using nth tick to maintain UPS.
script.on_nth_tick(30, function(event)
    for _, set in pairs(storage.hub_chests) do
        if not set.chest.valid then
            remove_entity_from_storage(set.chest)
            return
        end

        if set.chest.get_inventory(defines.inventory.chest).is_empty()
        then
            return
        end

        teleport_items_to_hub_from_chest(set.chest, set.hub)
    end
end)

function init_hub_chest_with_filters(chest)
    register_hub_chest(chest)
    local inventory = chest.get_inventory(defines.inventory.chest)
    local i = 1
    for _, item in pairs(prototypes.item) do
        if item_filter(item)
        then
            inventory.set_filter(i, item.name)
            i = i + 1
        end
    end
end

function item_filter(item)
    if item.type == "capsule"                   -- some ammonition
        or item.type == "item-with-entity-data" -- cars / trains
        or item.type == "rail-planner"          -- rails
    then
        return false
    end

    if item.place_result ~= nil
        or item.subgroup.name == "terrain"
        or item.place_as_tile_result ~= nil
        or item.type == "repair-tool"
    then
        return true
    end

    return false
end

function remove_entity_from_storage(entity_to_remove)
    for i, set in ipairs(storage.hub_chests) do
        if set.chest == entity_to_remove then
            table.remove(storage.hub_chests, i)
            break
        end
    end
end

function teleport_items_to_hub_from_chest(chest, hub)
    local inventory = chest.get_inventory(defines.inventory.chest)

    if not inventory.is_empty() then
        for _, item in pairs(inventory.get_contents()) do
            if hub.can_insert(item) then
                num_items = hub.insert(item)
                inventory.remove({ name = item.name, count = num_items })
            end
        end
    end
end

function register_hub_chest(chest)
    local surface = chest.surface
    local hub = surface.find_entity("space-platform-hub", { 0, 0 })
    table.insert(storage.hub_chests, { chest = chest, hub = hub })
end
