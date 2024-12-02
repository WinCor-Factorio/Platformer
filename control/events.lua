script.on_event(defines.events.on_cargo_pod_finished_ascending, function(e)
    e.cargo_pod.destroy()
end
)
