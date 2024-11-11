local planet = table.deepcopy(data.raw["planet"]["nauvis"])

planet.name = "void"
planet.distance = 20
planet.orientation = 0.5
planet.localised_name = "Void"
planet.asteroid_spawn_influence = 0.1
planet.asteroid_spawn_definitions = {}
local asteroid_definition = {
    asteroid = "metallic-asteroid-chunk",
    probability = 0.1,
    speed = 0.1,
    angle_when_stopped = 0.25
}

asteroid_definition.type = "asteroid-chunk"

table.insert(planet.asteroid_spawn_definitions, asteroid_definition)
data:extend { planet }
