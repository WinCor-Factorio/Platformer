itemsToHide = {
    item = {
        "carbonic-asteroid-chunk",
        "wooden-chest",
        "small-electric-pole",
        "construction-robot",
        "logistic-robot",
        "roboport",
        "foundation",
        "ice-platform",
        "overgrowth-jellynut-soil",
        "artificial-jellynut-soil",
        "overgrowth-yumako-soil",
        "artificial-yumako-soil",
        "refined-hazard-concrete",
        "hazard-concrete",
        "active-provider-chest",
        "passive-provider-chest",
        "storage-chest",
        "buffer-chest",
        "requester-chest",
        "burner-mining-drill",
        "electric-mining-drill",
        "big-mining-drill",
        "offshore-pump",
        "pumpjack",
        "lightning-rod",
        "lightning-collector",
        "rocket-silo",
        "battery-mk3-equipment",
        "battery-mk2-equipment",
        "battery-equipment",
        "fusion-reactor-equipment",
        "fission-reactor-equipment",
        "solar-panel-equipment",
        "toolbelt-equipment",
        "night-vision-equipment",
        "personal-roboport-mk2-equipment",
        "personal-roboport-equipment",
        "exoskeleton-equipment",
        "belt-immunity-equipment",
        "flamethrower-turret",
        "artillery-turret"
    },
    container = {
        "wooden-chest"
    },
    item_with_entity_data = {
        "artillery-wagon",
        "car",
        "tank",
        "spidertron"
    },
    electric_pole = {
        "small-electric-pole"
    },
    car = {
        "car",
        "tank"
    },
    logistic_container = {
        "active-provider-chest",
        "passive-provider-chest",
        "storage-chest",
        "buffer-chest",
        "requester-chest"
    },
    mining_drill = {
        "burner-mining-drill",
        "electric-mining-drill",
        "big-mining-drill",
        "pumpjack"
    },
    armor = {
        "light-armor",
        "heavy-armor",
        "modular-armor",
        "power-armor",
        "power-armor-mk2",
        "mech-armor"
    },
    capsule = {
        "cliff-explosives",
        "cluster-grenade",
        "poison-capsule",
        "slowdown-capsule",
        "defender-capsule",
        "distractor-capsule",
        "destroyer-capsule"
    },
    combat_robot = {
        "defender",
        "distractor",
        "destroyer"
    },
    gun = {
        "flamethrower",
        "combat-shotgun",
        "shotgun",
        "teslagun",
        "railgun",
        "submachine-gun",
        "pistol"
    },
    ammo = {
        "shotgun-shell",
        "piercing-shotgun-shell",
        "artillery-shell",
        "flamethrower-ammo"
    },
    spider_vehicle = { "spidertron" },
    artillery_wagon = { "artillery-wagon" },
    logistic_robot = { "logistic-robot" },
    construction_robot = { "construction-robot" },
    roboport = { "roboport" },
    offshore_pump = { "offshore-pump" },
    lightning_attractor = { "lightning-collector", "lightning-rod" },
    rocket_silo = { "rocket-silo" },
    artillery_turret = { "artillery-turret" },
    fluid_turret = { "flamethrower-turret" },
    asteroid_chunk = { "carbonic-asteroid-chunk" },
    asteroid =  {"small-carbonic-asteroid", "medium-carbonic-asteroid", "big-carbonic-asteroid", "huge-carbonic-asteroid"}
}

for key, itemArray in pairs(itemsToHide) do
    for _, item in ipairs(itemArray) do
        data.raw[key:gsub("_", "-")][item].hidden_in_factoriopedia = true;
        data.raw[key:gsub("_", "-")][item].hidden = true;
    end
end
