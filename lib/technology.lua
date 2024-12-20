platformer.technology = {}

platformer.technology.remove_recipe_productivity_effect = function(technology_name, effect_name)
    local technology = data.raw.technology[technology_name]
    if technology.effects ~= nil then
        for i, effect in pairs(technology.effects) do
            if effect.type == "change-recipe-productivity" and effect.recipe == effect_name then
                table.remove(technology.effects, i)
            end
        end
    end
end

platformer.technology.remove_effects_by_type = function(technology_name, effect_name)
    local technology = data.raw.technology[technology_name]
    if technology.effects ~= nil then
        for i, effect in pairs(technology.effects) do
            if effect.type == effect_name then
                table.remove(technology.effects, i)
            end
        end
    end
end

platformer.technology.remove_recipe = function(technology_name, recipe_name)
    local technology = data.raw.technology[technology_name]
    if technology.effects ~= nil then
        for i, effect in pairs(technology.effects) do
            if effect.type == "unlock-recipe" and effect.recipe == recipe_name then
                table.remove(technology.effects, i)
            end
        end
    end
end

platformer.technology.remove_everywhere = function(recipe_name)
    for technology_name, _ in pairs(data.raw.technology) do
        platformer.technology.remove_recipe(technology_name, recipe_name)
    end
end

platformer.technology.prune = function(technology_name)
    local technology = data.raw.technology[technology_name]
    if platformer.helpers.tablelength(technology.effects) == 0 then
        platformer.technology.remove(technology_name)
    end
end

platformer.technology.prune_all = function()
    for technology_name, _ in pairs(data.raw.technology) do
        platformer.technology.prune(technology_name)
    end
end

platformer.technology.remove = function(technology_name)
    local technology = data.raw.technology[technology_name]
    local dependents = platformer.technology.find_dependents(technology_name)

    for _, dependent in pairs(dependents) do
        platformer.technology.remove_prerequisite(dependent, technology_name)
        if technology.prerequisites ~= nil then
            for _, prerequisite in pairs(technology.prerequisites) do
                platformer.technology.add_prerequisite(dependent, prerequisite)
            end
        end
    end

    technology.enabled = false
    technology.visible_when_disabled = false
end

platformer.technology.remove_many = function(technologies)
    for _, technology in ipairs(technologies) do
        platformer.technology.remove(technology)
    end
end

platformer.technology.find_dependents = function(technology_name)
    local prerequisites = {}
    for dep_tech_name, technology in pairs(data.raw.technology) do
        if technology.prerequisites ~= nil then
            for _, prerequisite in pairs(technology.prerequisites) do
                if prerequisite == technology_name then
                    table.insert(prerequisites, dep_tech_name)
                end
            end
        end
    end

    return prerequisites
end

platformer.technology.remove_prerequisite = function(technology_name, prerequisite_name)
    local technology = data.raw.technology[technology_name]
    for i, prerequisite in pairs(technology.prerequisites) do
        if prerequisite == prerequisite_name then
            table.remove(technology.prerequisites, i)
        end
    end
end

platformer.technology.add_prerequisite = function(technology_name, prerequisite_name)
    local technology = data.raw.technology[technology_name]
    if not platformer.technology.has_prerequisite(technology_name, prerequisite_name) then
        table.insert(technology.prerequisites, prerequisite_name)
    end
end

platformer.technology.has_prerequisite = function(technology_name, prerequisite_name)
    local technology = data.raw.technology[technology_name]
    for i, prerequisite in pairs(technology.prerequisites) do
        if prerequisite == prerequisite_name then
            return true
        end
    end
    return false
end
