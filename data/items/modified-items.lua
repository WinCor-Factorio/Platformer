for _, type_data in pairs(data.raw) do
    for _, item in pairs(type_data) do
        if item.surface_conditions ~= nil or item.surface_conditions then
            item.surface_conditions = nil
        end
    end
end

data.raw["rail-support"]["rail-support"].support_range = 50
data.raw["rail-ramp"]["rail-ramp"].support_range = 50
