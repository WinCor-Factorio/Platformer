local gleba_chunk = table.deepcopy(data.raw["asteroid-chunk"]["carbonic-asteroid-chunk"])
gleba_chunk.name = "gleba-asteroid-chunk"
gleba_chunk.minable.result = "gleba-asteroid-chunk"
gleba_chunk.order = "a[gleba]-a[chunk]"
data.extend({ gleba_chunk })

local gleba_small = table.deepcopy(data.raw["asteroid"]["small-carbonic-asteroid"])
gleba_small.name = "small-gleba-asteroid"
gleba_small.dying_trigger_effect[2].entity_name = "gleba-asteroid-chunk"
gleba_small.order = "a[gleba]-b[small]"
data.extend({ gleba_small })

local gleba_medium = table.deepcopy(data.raw["asteroid"]["medium-carbonic-asteroid"])
gleba_medium.name = "medium-gleba-asteroid"
gleba_medium.dying_trigger_effect[2].entity_name = "small-gleba-asteroid"
gleba_medium.order = "a[gleba]-c[medium]"
data.extend({ gleba_medium })

local gleba_big = table.deepcopy(data.raw["asteroid"]["big-carbonic-asteroid"])
gleba_big.name = "big-gleba-asteroid"
gleba_big.dying_trigger_effect[2].entity_name = "medium-gleba-asteroid"
gleba_big.order = "a[gleba]-d[big]"
data.extend({ gleba_big })

local gleba_huge = table.deepcopy(data.raw["asteroid"]["huge-carbonic-asteroid"])
gleba_huge.name = "huge-gleba-asteroid"
gleba_huge.dying_trigger_effect[2].entity_name = "big-gleba-asteroid"
gleba_huge.order = "a[gleba]-e[huge]"
data.extend({ gleba_huge })
