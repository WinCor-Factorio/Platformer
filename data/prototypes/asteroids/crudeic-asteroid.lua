local crudeic_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
crudeic_chunk.name = "crudeic-asteroid-chunk"
crudeic_chunk.icon = "__platformer__/graphics/icons/crudeic-asteroid-chunk.png"
crudeic_chunk.minable.result = "crudeic-asteroid-chunk"
crudeic_chunk.order = "a[crudeic]-a[chunk]"

for i = 1, 8, 1 do
    crudeic_chunk.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/crudeic/chunk/asteroid-crudeic-chunk-colour-0" .. i .. ".png"
end
data.extend({ crudeic_chunk })

local crudeic_small = table.deepcopy(data.raw["asteroid"]["small-metallic-asteroid"])
crudeic_small.name = "small-crudeic-asteroid"
crudeic_small.icon = "__platformer__/graphics/icons/small-crudeic-asteroid.png"
crudeic_small.dying_trigger_effect[2].asteroid_name = "crudeic-asteroid-chunk"
crudeic_small.order = "a[crudeic]-b[small]"

for i = 1, 8, 1 do
    crudeic_small.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/crudeic/small/asteroid-crudeic-small-colour-0" .. i .. ".png"
end
data.extend({ crudeic_small })

local crudeic_medium = table.deepcopy(data.raw["asteroid"]["medium-metallic-asteroid"])
crudeic_medium.name = "medium-crudeic-asteroid"
crudeic_medium.icon = "__platformer__/graphics/icons/medium-crudeic-asteroid.png"
crudeic_medium.dying_trigger_effect[2].asteroid_name = "small-crudeic-asteroid"
crudeic_medium.order = "a[crudeic]-c[medium]"

for i = 1, 6, 1 do
    crudeic_medium.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/crudeic/medium/asteroid-crudeic-medium-colour-0" .. i .. ".png"
end
data.extend({ crudeic_medium })

local crudeic_big = table.deepcopy(data.raw["asteroid"]["big-metallic-asteroid"])
crudeic_big.name = "big-crudeic-asteroid"
crudeic_big.icon = "__platformer__/graphics/icons/big-crudeic-asteroid.png"
crudeic_big.dying_trigger_effect[2].asteroid_name = "medium-crudeic-asteroid"
crudeic_big.order = "a[crudeic]-d[big]"

for i = 1, 6, 1 do
    crudeic_big.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/crudeic/big/asteroid-crudeic-big-colour-0" .. i .. ".png"
end
data.extend({ crudeic_big })

local crudeic_huge = table.deepcopy(data.raw["asteroid"]["huge-metallic-asteroid"])
crudeic_huge.name = "huge-crudeic-asteroid"
crudeic_huge.icon = "__platformer__/graphics/icons/huge-crudeic-asteroid.png"
crudeic_huge.dying_trigger_effect[2].asteroid_name = "big-crudeic-asteroid"
crudeic_huge.order = "a[crudeic]-e[huge]"

for i = 1, 6, 1 do
    crudeic_huge.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/crudeic/huge/asteroid-crudeic-huge-colour-0" .. i .. ".png"
end
data.extend({ crudeic_huge })
