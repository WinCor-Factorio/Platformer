local aquilo_chunk = table.deepcopy(data.raw["asteroid-chunk"]["oxide-asteroid-chunk"])
aquilo_chunk.name = "aquilo-asteroid-chunk"
aquilo_chunk.icon = "__platformer__/graphics/icons/aquilo-asteroid-chunk.png"
aquilo_chunk.minable.result = "aquilo-asteroid-chunk"
aquilo_chunk.order = "a[aquilo]-a[chunk]"

for i = 1, 6, 1 do
    aquilo_chunk.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/aquilo/chunk/asteroid-aquilo-chunk-colour-0" .. i .. ".png"
end
data.extend({ aquilo_chunk })

local aquilo_small = table.deepcopy(data.raw["asteroid"]["small-oxide-asteroid"])
aquilo_small.name = "small-aquilo-asteroid"
aquilo_small.icon = "__platformer__/graphics/icons/small-aquilo-asteroid.png"
aquilo_small.dying_trigger_effect[2].asteroid_name = "aquilo-asteroid-chunk"
aquilo_small.order = "a[aquilo]-b[small]"
for i = 1, 7, 1 do
    aquilo_small.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/aquilo/small/asteroid-aquilo-small-colour-0" .. i .. ".png"
end
data.extend({ aquilo_small })

local aquilo_medium = table.deepcopy(data.raw["asteroid"]["medium-oxide-asteroid"])
aquilo_medium.name = "medium-aquilo-asteroid"
aquilo_medium.icon = "__platformer__/graphics/icons/medium-aquilo-asteroid.png"
aquilo_medium.dying_trigger_effect[2].entity_name = "small-aquilo-asteroid"
aquilo_medium.order = "a[aquilo]-c[medium]"
for i = 1, 5, 1 do
    aquilo_medium.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/aquilo/medium/asteroid-aquilo-medium-colour-0" .. i .. ".png"
end
data.extend({ aquilo_medium })

local aquilo_big = table.deepcopy(data.raw["asteroid"]["big-oxide-asteroid"])
aquilo_big.name = "big-aquilo-asteroid"
aquilo_big.icon = "__platformer__/graphics/icons/big-aquilo-asteroid.png"
aquilo_big.dying_trigger_effect[2].entity_name = "medium-aquilo-asteroid"
aquilo_big.order = "a[aquilo]-d[big]"
for i = 1, 5, 1 do
    aquilo_big.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/aquilo/big/asteroid-aquilo-big-colour-0" .. i .. ".png"
end
data.extend({ aquilo_big })

local aquilo_huge = table.deepcopy(data.raw["asteroid"]["huge-oxide-asteroid"])
aquilo_huge.name = "huge-aquilo-asteroid"
aquilo_huge.icon = "__platformer__/graphics/icons/huge-aquilo-asteroid.png"
aquilo_huge.dying_trigger_effect[2].entity_name = "big-aquilo-asteroid"
aquilo_huge.order = "a[aquilo]-e[huge]"
for i = 1, 8, 1 do
    aquilo_huge.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/aquilo/huge/asteroid-aquilo-huge-colour-0" .. i .. ".png"
end
data.extend({ aquilo_huge })
