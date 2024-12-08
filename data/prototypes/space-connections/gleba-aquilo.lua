local spaceConnection = data.raw["space-connection"]["gleba-aquilo"]
spaceConnection.length = 125000
spaceConnection.asteroid_spawn_definitions = {
    {
        asteroid = "big-gleba-asteroid",
        spawn_points = {
            {
                distance = 0,
                probability = 0,
                speed = 0.00001,
                angle_when_stopped = 0.25
            },
            {
                distance = 0.1,
                probability = 0.015,
                speed = 0.020,
                angle_when_stopped = 0.25
            },
            {
                distance = 0.9,
                probability = 0.0005,
                speed = 0.020,
                angle_when_stopped = 0.25
            },
            {
                distance = 1,
                probability = 0,
                speed = 0.00001,
                angle_when_stopped = 0.25
            }
        }
    },
    {
        asteroid = "big-aquilo-asteroid",
        spawn_points = {
            {
                distance = 0,
                probability = 0,
                speed = 0.00001,
                angle_when_stopped = 0.25
            },
            {
                distance = 0.1,
                probability = 0.0005,
                speed = 0.020,
                angle_when_stopped = 0.25
            },
            {
                distance = 0.9,
                probability = 0.015,
                speed = 0.020,
                angle_when_stopped = 0.25
            },
            {
                distance = 1,
                probability = 0,
                speed = 0.00001,
                angle_when_stopped = 0.25
            }
        }
    }
}