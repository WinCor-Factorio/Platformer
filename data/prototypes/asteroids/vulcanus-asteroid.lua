local vulcanus_chunk = table.deepcopy(data.raw["asteroid-chunk"]["oxide-asteroid-chunk"])
vulcanus_chunk.name = "vulcanus-asteroid-chunk"
vulcanus_chunk.icon = "__platformer__/graphics/icons/vulcanus-asteroid-chunk.png"
vulcanus_chunk.minable.result = "vulcanus-asteroid-chunk"
vulcanus_chunk.order = "a[vulcanus]-a[chunk]"

for i = 1, 6, 1 do
    vulcanus_chunk.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/vulcanus/chunk/asteroid-vulcanus-chunk-colour-0" .. i .. ".png"
end
data.extend({ vulcanus_chunk })

local vulcanus_small = table.deepcopy(data.raw["asteroid"]["small-oxide-asteroid"])
vulcanus_small.name = "small-vulcanus-asteroid"
vulcanus_small.icon = "__platformer__/graphics/icons/small-vulcanus-asteroid.png"
vulcanus_small.dying_trigger_effect[2].asteroid_name = "vulcanus-asteroid-chunk"
vulcanus_small.order = "a[vulcanus]-b[small]"

for i = 1, 7, 1 do
    vulcanus_small.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/vulcanus/small/asteroid-vulcanus-small-colour-0" .. i .. ".png"
end
data.extend({ vulcanus_small })

local vulcanus_medium = table.deepcopy(data.raw["asteroid"]["medium-oxide-asteroid"])
vulcanus_medium.name = "medium-vulcanus-asteroid"
vulcanus_medium.icon = "__platformer__/graphics/icons/medium-vulcanus-asteroid.png"
vulcanus_medium.dying_trigger_effect[2].entity_name = "small-vulcanus-asteroid"
vulcanus_medium.order = "a[vulcanus]-c[medium]"

for i = 1, 5, 1 do
    vulcanus_medium.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/vulcanus/medium/asteroid-vulcanus-medium-colour-0" .. i .. ".png"
end
data.extend({ vulcanus_medium })

local vulcanus_big = table.deepcopy(data.raw["asteroid"]["big-oxide-asteroid"])
vulcanus_big.name = "big-vulcanus-asteroid"
vulcanus_big.icon = "__platformer__/graphics/icons/big-vulcanus-asteroid.png"
vulcanus_big.dying_trigger_effect[2].entity_name = "medium-vulcanus-asteroid"
vulcanus_big.order = "a[vulcanus]-d[big]"

for i = 1, 5, 1 do
    vulcanus_big.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/vulcanus/big/asteroid-vulcanus-big-colour-0" .. i .. ".png"
end
data.extend({ vulcanus_big })

local vulcanus_huge = table.deepcopy(data.raw["asteroid"]["huge-oxide-asteroid"])
vulcanus_huge.name = "huge-vulcanus-asteroid"
vulcanus_huge.icon = "__platformer__/graphics/icons/huge-vulcanus-asteroid.png"
vulcanus_huge.dying_trigger_effect[2].entity_name = "big-vulcanus-asteroid"
vulcanus_huge.order = "a[vulcanus]-e[huge]"

for i = 1, 7, 1 do
    vulcanus_huge.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/vulcanus/huge/asteroid-vulcanus-huge-colour-0" .. i .. ".png"
end
data.extend({ vulcanus_huge })
