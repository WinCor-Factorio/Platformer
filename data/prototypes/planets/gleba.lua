local planet = data.raw.planet["gleba"]
planet.asteroid_spawn_definitions = {
    {
        asteroid = "gleba-asteroid-chunk",
        probability = 0.1,
        speed = 0.1,
        angle_when_stopped = 0.25,
        type = "asteroid-chunk"
    },{
        asteroid = "small-gleba-asteroid",
        probability = 0.033,
        speed = 0.075,
        angle_when_stopped = 0.25
    },
    {
        asteroid = "oxide-asteroid-chunk",
        probability = 0.05,
        speed = 0.05,
        angle_when_stopped = 0.25,
        type = "asteroid-chunk"
    }
}