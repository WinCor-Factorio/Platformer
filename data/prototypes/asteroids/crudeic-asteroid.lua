local crudeic_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
crudeic_chunk.name = "crudeic-asteroid-chunk"
crudeic_chunk.icon = "__platformer__/graphics/icons/crudeic-asteroid-chunk.png"
crudeic_chunk.minable.result = "crudeic-asteroid-chunk"

crudeic_chunk.graphics_set.variations[1].color_texture.filename =
"__platformer__/graphics/entity/crudeic/chunk/asteroid-crudeic-chunk-colour-01.png"
crudeic_chunk.graphics_set.variations[2].color_texture.filename =
"__platformer__/graphics/entity/crudeic/chunk/asteroid-crudeic-chunk-colour-02.png"
crudeic_chunk.graphics_set.variations[3].color_texture.filename =
"__platformer__/graphics/entity/crudeic/chunk/asteroid-crudeic-chunk-colour-03.png"
crudeic_chunk.graphics_set.variations[4].color_texture.filename =
"__platformer__/graphics/entity/crudeic/chunk/asteroid-crudeic-chunk-colour-04.png"
crudeic_chunk.graphics_set.variations[5].color_texture.filename =
"__platformer__/graphics/entity/crudeic/chunk/asteroid-crudeic-chunk-colour-05.png"
crudeic_chunk.graphics_set.variations[6].color_texture.filename =
"__platformer__/graphics/entity/crudeic/chunk/asteroid-crudeic-chunk-colour-06.png"
crudeic_chunk.graphics_set.variations[7].color_texture.filename =
"__platformer__/graphics/entity/crudeic/chunk/asteroid-crudeic-chunk-colour-07.png"
crudeic_chunk.graphics_set.variations[8].color_texture.filename =
"__platformer__/graphics/entity/crudeic/chunk/asteroid-crudeic-chunk-colour-08.png"

data.extend({ crudeic_chunk })
