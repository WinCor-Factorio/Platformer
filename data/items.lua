local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")

data:extend(
    {
        {
            type = "item",
            name = "crudeic-asteroid-chunk",
            icon = "__platformer__/graphics/icons/crudeic-asteroid-chunk.png",
            subgroup = "space-material",
            order = "a[crudeic]-e[chunk]",
            inventory_move_sound = space_age_item_sounds.rock_inventory_move,
            pick_sound = space_age_item_sounds.rock_inventory_pickup,
            drop_sound = space_age_item_sounds.rock_inventory_move,
            stack_size = 1,
            weight = 100 * kg,
            random_tint_color = item_tints.iron_rust
        },
        {
            type = "item",
            name = "gleba-asteroid-chunk",
            icon = "__space-age__/graphics/icons/carbonic-asteroid-chunk.png",
            subgroup = "space-material",
            order = "a[gleba]-e[chunk]",
            inventory_move_sound = space_age_item_sounds.rock_inventory_move,
            pick_sound = space_age_item_sounds.rock_inventory_pickup,
            drop_sound = space_age_item_sounds.rock_inventory_move,
            stack_size = 1,
            weight = 100 * kg,
            random_tint_color = item_tints.iron_rust
        },
        {
            type = "item",
            name = "fulgora-asteroid-chunk",
            icon = "__platformer__/graphics/icons/fulgora-asteroid-chunk.png",
            subgroup = "space-material",
            order = "a[fulgora]-e[chunk]",
            inventory_move_sound = space_age_item_sounds.rock_inventory_move,
            pick_sound = space_age_item_sounds.rock_inventory_pickup,
            drop_sound = space_age_item_sounds.rock_inventory_move,
            stack_size = 1,
            weight = 100 * kg,
            random_tint_color = item_tints.iron_rust
        },
        {
            type = "item",
            name = "vulcanus-asteroid-chunk",
            icon = "__platformer__/graphics/icons/vulcanus-asteroid-chunk.png",
            subgroup = "space-material",
            order = "a[vulcanus]-e[chunk]",
            inventory_move_sound = space_age_item_sounds.rock_inventory_move,
            pick_sound = space_age_item_sounds.rock_inventory_pickup,
            drop_sound = space_age_item_sounds.rock_inventory_move,
            stack_size = 1,
            weight = 100 * kg,
            random_tint_color = item_tints.iron_rust
        },
        {
            type = "item",
            name = "aquilo-asteroid-chunk",
            icon = "__space-age__/graphics/icons/oxide-asteroid-chunk.png",
            subgroup = "space-material",
            order = "a[aquilo]-e[chunk]",
            inventory_move_sound = space_age_item_sounds.rock_inventory_move,
            pick_sound = space_age_item_sounds.rock_inventory_pickup,
            drop_sound = space_age_item_sounds.rock_inventory_move,
            stack_size = 1,
            weight = 100 * kg,
            random_tint_color = item_tints.iron_rust
        },
        {
            type = "item",
            name = "crude-oil-sludge",
            icon = "__base__/graphics/icons/crude-oil-resource.png",
            subgroup = "raw-resource",
            order = "b[crude-oil]",
            inventory_move_sound = space_age_item_sounds.rock_inventory_move,
            pick_sound = space_age_item_sounds.rock_inventory_pickup,
            drop_sound = space_age_item_sounds.rock_inventory_move,
            stack_size = 10,
            weight = 1 * kg,
        },
        {
            type = "item",
            name = "lava-stone",
            icon = "__Krastorio2Assets__/icons/items/enriched-copper.png",
            subgroup = "raw-resource",
            order = "b[lava-stone]",
            inventory_move_sound = space_age_item_sounds.rock_inventory_move,
            pick_sound = space_age_item_sounds.rock_inventory_pickup,
            drop_sound = space_age_item_sounds.rock_inventory_move,
            stack_size = 10,
            weight = 1 * kg,
        },
        {
            type = "item",
            name = "cryolitic-ore",
            icon = "__Krastorio2Assets__/icons/items/imersite-crystal.png",
            subgroup = "raw-resource",
            order = "b[cryolitic-ore]",
            inventory_move_sound = space_age_item_sounds.rock_inventory_move,
            pick_sound = space_age_item_sounds.rock_inventory_pickup,
            drop_sound = space_age_item_sounds.rock_inventory_move,
            stack_size = 10,
            weight = 1 * kg,
        },
        {
            type = "item",
            name = "lithium-ore",
            icon = "__Krastorio2Assets__/icons/items/quartz-2.png",
            subgroup = "raw-resource",
            order = "b[lithium-ore]",
            inventory_move_sound = space_age_item_sounds.rock_inventory_move,
            pick_sound = space_age_item_sounds.rock_inventory_pickup,
            drop_sound = space_age_item_sounds.rock_inventory_move,
            stack_size = 50,
            weight = 1 * kg,
        },
    }
)


local steelChest = data.raw["container"]["steel-chest"]
steelChest.surface_conditions = { { min = 0, max = 0, property = "gravity" } }
steelChest.inventory_size = 1;
