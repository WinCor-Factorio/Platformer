script.on_event(
-- defines.events.on_robot_built_entity,
-- defines.events.script_raised_built,
-- defines.events.script_raised_revive,
    defines.events.on_built_entity,
    function(e)
        local entity = e.entity
        if entity.name == "hub-chest" and entity.type == "container" then
            init_hub_chest_with_filters(entity)
        end
    end)

script.on_event(defines.events.on_gui_opened, function(e)
    if e.entity and e.entity.name == "hub-chest" then
        game.print("opening chest")
    end
end)

-- using nth tick to maintain UPS.
script.on_nth_tick(30, function(event)
    for _, chest in pairs(storage.hub_chests) do
        if not chest.valid then
            remove_entity_from_storage(storage, chest)
            return
        end

        if not chest.get_inventory(defines.inventory.chest).is_empty() then
            return
        end

        teleport_items_to_hub_from_chest(chest)
    end
end)

function init_hub_chest_with_filters(entity)
    table.insert(storage.hub_chests, entity)
    local inventory = entity.get_inventory(defines.inventory.chest)
    local i = 1
    for _, item in pairs(prototypes.item) do
        if item_filter(item)
        then
            inventory.set_filter(i, item.name)
            i = i + 1
            print(item.name)
        end
    end
end

function item_filter(item)
    if item.type == "capsule"
        or item.type == "item-with-entity-data"
        or item.type == "rail-planner"
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

function remove_entity_from_storage(storage, entity_to_remove)
    for i, entity in ipairs(storage.hub_chests) do
        if entity == entity_to_remove then
            table.remove(storage.hub_chests, i)
            break
        end
    end
end

function teleport_items_to_hub_from_chest(chest)
    local inventory = chest.get_inventory(defines.inventory.chest)
    if inventory and inventory.is_empty() == false then
        for _, item in pairs(inventory.get_contents()) do
            if storage.platform.hub.can_insert(item) then
                storage.platform.hub.insert(item)
                inventory.remove(item)
            end
        end
    end
end
