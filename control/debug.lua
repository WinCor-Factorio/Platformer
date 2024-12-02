script.on_event(defines.events.on_console_command, function(e)
    if e.command == "clear_pod_alerts" then
        for _, surface in pairs(game.surfaces) do
            for _, entity in pairs(surface.find_entities_filtered({ name = "cargo-pod-container" })) do
                entity.destroy()
            end
        end
    end
end)
