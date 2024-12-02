local aquilo_chunk = table.deepcopy(data.raw["asteroid-chunk"]["oxide-asteroid-chunk"])
aquilo_chunk.name = "aquilo-asteroid-chunk"
aquilo_chunk.minable.result = "aquilo-asteroid-chunk"
aquilo_chunk.order = "a[aquilo]-a[chunk]"
data.extend({ aquilo_chunk })

local aquilo_small = table.deepcopy(data.raw["asteroid"]["small-oxide-asteroid"])
aquilo_small.name = "small-aquilo-asteroid"
aquilo_small.dying_trigger_effect[2].asteroid_name = "aquilo-asteroid-chunk"
aquilo_small.order = "a[aquilo]-b[small]"
data.extend({ aquilo_small })

local aquilo_medium = table.deepcopy(data.raw["asteroid"]["medium-oxide-asteroid"])
aquilo_medium.name = "medium-aquilo-asteroid"
aquilo_medium.dying_trigger_effect[2].asteroid_name = "small-aquilo-asteroid"
aquilo_medium.order = "a[aquilo]-c[medium]"
data.extend({ aquilo_medium })

local aquilo_big = table.deepcopy(data.raw["asteroid"]["big-oxide-asteroid"])
aquilo_big.name = "big-aquilo-asteroid"
aquilo_big.dying_trigger_effect[2].asteroid_name = "medium-aquilo-asteroid"
aquilo_big.order = "a[aquilo]-d[big]"
data.extend({ aquilo_big })

local aquilo_huge = table.deepcopy(data.raw["asteroid"]["huge-oxide-asteroid"])
aquilo_huge.name = "huge-aquilo-asteroid"
aquilo_huge.dying_trigger_effect[2].asteroid_name = "big-aquilo-asteroid"
aquilo_huge.order = "a[aquilo]-e[huge]"
data.extend({ aquilo_huge })
