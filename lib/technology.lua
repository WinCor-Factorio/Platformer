lib.technology = {}

--Simple function to scan the provided technology and removed the desired effect.
lib.technology.remove_effect = function(technology_name, effect_name)
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
lib.technology.remove_recipe = function(technology_name, recipe_name)
    local technology = data.raw.technology[technology_name]
    if technology.effects ~= nil then
        for i, effect in pairs(technology.effects) do
            if effect.type == "unlock-recipe" and effect.recipe == recipe_name then
                log("Removed recipe (" .. recipe_name .. ") from \"" .. technology_name .. "\"")
                table.remove(technology.effects, i)
            end
        end
    end
end

-- Calls remove_recipe for all technologies
lib.technology.remove_everywhere = function(recipe_name)
    log("Removing recipe (" .. recipe_name .. ") from all technologies.")
    for technology_name, _ in pairs(data.raw.technology) do
        lib.technology.remove_recipe(technology_name, recipe_name)
    end
end

-- Checks if the technology has no effects before calling remove.
lib.technology.prune = function(technology_name)
    local technology = data.raw.technology[technology_name]
    if lib.helpers.tablelength(technology.effects) == 0 then
        lib.technology.remove(technology_name)
    end
end

-- Calls prune for all technologies
lib.technology.prune_all = function()
    for technology_name, _ in pairs(data.raw.technology) do
        lib.technology.prune(technology_name)
    end
end

-- Removes a technology by name from the research tree. Will scan all technologies and seamlessly fix chains broken by removal.
lib.technology.remove = function(technology_name)
    local technology = data.raw.technology[technology_name]
    local dependents = lib.technology.find_dependents(technology_name)

    log("Removing technology (" .. technology_name .. ") from the technology tree.")

    for _, dependent in pairs(dependents) do
        lib.technology.remove_prerequisite(dependent, technology_name)
        if technology.prerequisites ~= nil then
            for _, prerequisite in pairs(technology.prerequisites) do
                lib.technology.add_prerequisite(dependent, prerequisite)
            end
        end
    end

    technology.enabled = false
    technology.visible_when_disabled = false
end

lib.technology.remove_many = function (technologies) 
    for _, technology in ipairs(technologies) do 
        lib.technology.remove(technology) 
    end 
end

-- Returns list of technology names that depend on a technology
lib.technology.find_dependents = function(technology_name)
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

-- Removes a prerequisite technology from another technology
lib.technology.remove_prerequisite = function(technology_name, prerequisite_name)
    local technology = data.raw.technology[technology_name]
    for i, prerequisite in pairs(technology.prerequisites) do
        if prerequisite == prerequisite_name then
            table.remove(technology.prerequisites, i)
        end
    end
end

-- Adds a prerequisite technology from another technology
lib.technology.add_prerequisite = function(technology_name, prerequisite_name)
    local technology = data.raw.technology[technology_name]
    if not lib.technology.has_prerequisite(technology_name, prerequisite_name) then
        log("Add " .. prerequisite_name .. " To " .. technology_name)
        table.insert(technology.prerequisites, prerequisite_name)
        log(technology.prerequisites)
    end
end

-- Checks if a technologies depends on another technology
lib.technology.has_prerequisite = function(technology_name, prerequisite_name)
    local technology = data.raw.technology[technology_name]
    for i, prerequisite in pairs(technology.prerequisites) do
        if prerequisite == prerequisite_name then
            return true
        end
    end
    return false
end