script.on_event(defines.events.on_cargo_pod_finished_ascending, function(e)
    e.cargo_pod.destroy()
end
)

script.on_event(defines.events.on_research_finished, function(e)
    if e.research.name == "platform-creator" then
        local force = game.forces["player"]
        platform = force.create_space_platform({
            name = "Base One",
            planet = "nauvis",
            starter_pack = "space-platform-starter-pack"
        })

        if not platform then
            error("The platform was not initiated properly")
        end

        platform.apply_starter_pack()
    end
end)