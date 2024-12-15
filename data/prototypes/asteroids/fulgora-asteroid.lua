local fulgora_chunk = table.deepcopy(data.raw["asteroid-chunk"]["carbonic-asteroid-chunk"])
fulgora_chunk.name = "fulgora-asteroid-chunk"
fulgora_chunk.icon = "__platformer__/graphics/icons/fulgora-asteroid-chunk.png"
fulgora_chunk.minable.result = "fulgora-asteroid-chunk"
fulgora_chunk.order = "a[fulgora]-a[chunk]"

for i = 1, 7, 1 do
    fulgora_chunk.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/fulgora/chunk/asteroid-fulgora-chunk-colour-0" .. i .. ".png"
end
data.extend({ fulgora_chunk })

local fulgora_small = table.deepcopy(data.raw["asteroid"]["small-carbonic-asteroid"])
fulgora_small.name = "small-fulgora-asteroid"
fulgora_small.icon = "__platformer__/graphics/icons/small-fulgora-asteroid.png"
fulgora_small.dying_trigger_effect[2].entity_name = "fulgora-asteroid-chunk"
fulgora_small.order = "a[fulgora]-b[small]"

for i = 1, 6, 1 do
    fulgora_small.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/fulgora/small/asteroid-fulgora-small-colour-0" .. i .. ".png"
end
data.extend({ fulgora_small })

local fulgora_medium = table.deepcopy(data.raw["asteroid"]["medium-carbonic-asteroid"])
fulgora_medium.name = "medium-fulgora-asteroid"
fulgora_medium.icon = "__platformer__/graphics/icons/medium-fulgora-asteroid.png"
fulgora_medium.dying_trigger_effect[2].entity_name = "small-fulgora-asteroid"
fulgora_medium.order = "a[fulgora]-c[medium]"

for i = 1, 6, 1 do
    fulgora_medium.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/fulgora/medium/asteroid-fulgora-medium-colour-0" .. i .. ".png"
end
data.extend({ fulgora_medium })

local fulgora_big = table.deepcopy(data.raw["asteroid"]["big-carbonic-asteroid"])
fulgora_big.name = "big-fulgora-asteroid"
fulgora_big.icon = "__platformer__/graphics/icons/big-fulgora-asteroid.png"
fulgora_big.dying_trigger_effect[2].entity_name = "medium-fulgora-asteroid"
fulgora_big.order = "a[fulgora]-d[big]"

for i = 1, 6, 1 do
    fulgora_big.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/fulgora/big/asteroid-fulgora-big-colour-0" .. i .. ".png"
end
data.extend({ fulgora_big })

local fulgora_huge = table.deepcopy(data.raw["asteroid"]["huge-carbonic-asteroid"])
fulgora_huge.name = "huge-fulgora-asteroid"
fulgora_huge.icon = "__platformer__/graphics/icons/huge-fulgora-asteroid.png"
fulgora_huge.dying_trigger_effect[2].entity_name = "big-fulgora-asteroid"
fulgora_huge.order = "a[fulgora]-e[huge]"

for i = 1, 7, 1 do
    fulgora_huge.graphics_set.variations[i].color_texture.filename =
        "__platformer__/graphics/entity/fulgora/huge/asteroid-fulgora-huge-colour-0" .. i .. ".png"
end
data.extend({ fulgora_huge })
