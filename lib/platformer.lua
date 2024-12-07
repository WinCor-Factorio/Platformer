platformer = {}

platformer.helpers = {}
platformer.helpers.tablelength = function(T)
    local count = 0
    if T ~= nil then
        for _ in pairs(T) do count = count + 1 end
    end
    return count
end

platformer.recipe = {}

--Both disables, hides from factoriopedia and removes it from technology unlocks
platformer.recipe.hide = function(recipe_name)
    local recipe = data.raw.recipe[recipe_name]
    recipe.enabled = false
    recipe.hidden = true
    recipe.hidden_in_factoriopedia = true
    platformer.technology.remove_recipe_everywhere(recipe_name)
end

platformer.technology = {}

--Simple function to scan the provided technology and removed the desired effect.
platformer.technology.remove_effect = function(technology_name, effect_name)
    local technology = data.raw.technology[technology_name]
    if technology.effects ~= nil then
        for i, effect in pairs(technology.effects) do
            if effect.type == effect_name then
                table.remove(technology.effects, i)
            end
        end
    end
end

--Simple function to scan the provided technology and removed the desired recipe unlock.
platformer.technology.remove_recipe = function(technology_name, recipe_name)
    local technology = data.raw.technology[technology_name]
    log("platformer.technology.remove_recipe(" .. technology_name .. "," .. recipe_name .. ")")
    if technology.effects ~= nil then
        for i, effect in pairs(technology.effects) do
            if effect.type == "unlock-recipe" and effect.recipe == recipe_name then
                table.remove(technology.effects, i)
            end
        end
    end
end

-- Not the most performant want to remove recipes
platformer.technology.remove_recipe_everywhere = function(recipe_name)
    for technology_name, _ in pairs(data.raw.technology) do
        platformer.technology.remove_recipe(technology_name, recipe_name)
    end
end

-- Checks if the technology has no effects before calling remove_research.
platformer.technology.prune_research = function(technology_name)
    log("platformer.technology.prune_research(" .. technology_name .. ")")
    local technology = data.raw.technology[technology_name]
    if platformer.helpers.tablelength(technology.effects) == 0 then
        log("platformer.technology.prune_research(" .. technology_name .. ") = true")
        platformer.technology.remove_research(technology_name)
    else
        log("platformer.technology.prune_research(" ..
            technology_name .. ") = false (" .. platformer.helpers.tablelength(technology.effects) .. ")")
        log(serpent.dump(technology.effects))
    end
end

-- Removes a technology by name from the research tree. Will scan all technologies and seamlessly fix chains broken by removal.
platformer.technology.remove_research = function(technology_name)
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

-- Returns list of technology names that depend on a technology
platformer.technology.find_dependents = function(technology_name)
    local prerequisites = {}
    for dep_tech_name, technology in pairs(data.raw.technology) do
        if technology.prerequisites ~= nil then
            for _, prerequisite in pairs(technology.prerequisites) do
                if prerequisite == technology_name then
                    log(prerequisite)
                    table.insert(prerequisites, dep_tech_name)
                end
            end
        end
    end

    return prerequisites
end

-- Checks if a technologies depends on another technology
platformer.technology.has_prerequisite = function(technology_name, prerequisite_name)
    local technology = data.raw.technology[technology_name]
    for i, prerequisite in pairs(technology.prerequisites) do
        if prerequisite == prerequisite_name then
            return true
        end
    end
    return false
end

-- Removes a prerequisite technology from another technology
platformer.technology.remove_prerequisite = function(technology_name, prerequisite_name)
    local technology = data.raw.technology[technology_name]
    for i, prerequisite in pairs(technology.prerequisites) do
        if prerequisite == prerequisite_name then
            table.remove(technology.prerequisites, i)
        end
    end
end

-- Adds a prerequisite technology from another technology
platformer.technology.add_prerequisite = function(technology_name, prerequisite_name)
    local technology = data.raw.technology[technology_name]
    if not platformer.technology.has_prerequisite(technology_name, prerequisite_name) then
        table.insert(technology.prerequisites, prerequisite_name)
    end
end
