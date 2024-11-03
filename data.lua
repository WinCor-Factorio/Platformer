local planet = table.deepcopy(data.raw["planet"]["nauvis"])
planet.name = "void"
planet.distance = 20
planet.orientation = 0.5
planet.localised_name = "Void"
planet.asteroid_spawn_influence = 0.1
data:extend { planet }
