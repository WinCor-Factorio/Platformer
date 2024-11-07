local global_index = 1

script.on_event(
    { defines.events.on_built_entity, defines.events.on_robot_built_entity, defines.events
        .on_space_platform_built_entity },
    function(e)
        local entity = e.entity
        if entity.name == "hub-chest" and entity.type == "container" then
            set = register_hub_chest(entity)
            init_hub_chest_with_filters(entity)
            create_wire_connection(set)
        end
    end)

script.on_nth_tick(1, function(event)
    if storage.hub_chests == nil or #storage.hub_chests == 0 then
        return
    end

    local max_per_tick = 3
    local total = #storage.hub_chests
    local chest_index = global_index

    for n = 1, max_per_tick do
        local set = storage.hub_chests[chest_index]

        if not is_data_set_valid(set) then
            global_index = 1 -- don't bother to handele it, just start over in next iteration
            return
        end

        teleport_items_to_hub_from_chest(set.chest, set.hub)

        -- Move to the next chest
        chest_index = chest_index + 1
        global_index = global_index + 1
        if chest_index > total then
            global_index = 1
            return
        end
    end
end)

function init_hub_chest_with_filters(chest)
    local inventory = chest.get_inventory(defines.inventory.chest)
    local i = 1
    for _, item in pairs(prototypes.item) do
        if item_filter(item)
        then
            inventory.set_filter(i, item.name)
            i = i + 1
        end
    end

    chest.operable = false
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

function is_data_set_valid(set)
    if not set.chest.valid then
        remove_set_from_storage(set)
        return false
    end

    return not set.chest.get_inventory(defines.inventory.chest).is_empty()
end

function remove_set_from_storage(set_to_remove)
    for i, set in ipairs(storage.hub_chests) do
        if set == set_to_remove then
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
    local set = { chest = chest, hub = hub }
    table.insert(storage.hub_chests, { chest = chest, hub = hub })
    return set
end

function create_wire_connection(set)
    connect_ports(set, defines.wire_connector_id.circuit_red)
    connect_ports(set, defines.wire_connector_id.circuit_green)
end

function connect_ports(set, definition)
    chest_port = set.chest.get_wire_connector(definition, true)
    hub_port = set.hub.get_wire_connector(definition, true)
    chest_port.connect_to(hub_port, false, defines.wire_origin.script)
end
