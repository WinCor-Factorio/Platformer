local planet = data.raw.planet["nauvis"]
planet.asteroid_spawn_definitions = {
    {
        asteroid = "metallic-asteroid-chunk",
        probability = 0.1,
        speed = 0.1,
        angle_when_stopped = 0.25,
        type = "asteroid-chunk"
    }
}
-- planet.map_gen_settings = { -- This works but prevents the player from spawning. Needs more work.
--     autoplace_controls = {},
--     autoplace_settings = {
--         ["entity"] = {
--             treat_missing_as_default = false,
--             settings = {}
--         },
--         ["decorative"] = {
--             treat_missing_as_default = false,
--             settings = {}
--         },
--         ["tile"] = {
--             treat_missing_as_default = false,
--             settings = {
--                 ["empty-space"] = {}
--             }
--         }
--     },
-- }
