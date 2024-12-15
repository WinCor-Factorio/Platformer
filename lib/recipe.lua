lib.recipe = {}

--Both disables, hides from factoriopedia and removes it from technology unlocks
lib.recipe.hide = function(recipe_name)
    local recipe = data.raw.recipe[recipe_name]
    recipe.enabled = false
    recipe.hidden = true
    recipe.hidden_in_factoriopedia = true
    lib.technology.remove_everywhere(recipe_name)
end

lib.recipe.hide_many = function (recipes) 
    for _, recipe in ipairs(recipes) do 
        lib.recipe.hide(recipe) 
    end 
end