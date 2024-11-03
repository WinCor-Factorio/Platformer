-- Disable all technologies
--data.raw.technology["technology-name"].enabled = false;


-- Recipes
local spacePlatformFoundation = data.raw.recipe["space-platform-foundation"];

spacePlatformFoundation.ingredients = {
    { type = "item", name = "iron-plate", amount = 10 } }

spacePlatformFoundation.enabled = true;
