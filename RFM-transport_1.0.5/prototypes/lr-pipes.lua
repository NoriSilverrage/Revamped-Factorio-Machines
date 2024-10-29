data:extend({
 {
    type = "item",
    name = "iron-pipe-lr",
    icon = modname.."/graphics/icons/pipe-to-ground-lr.png",
    icon_size = 64,
    subgroup = "energy-pipe-distribution",
    order = "a[pipe]-b[pipe-to-ground]-d",
    place_result = "iron-pipe-lr",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "iron-pipe-lr",
    enabled = "false",
    ingredients =
    {
      {"pipe-to-ground", 8}
    },
    result = "iron-pipe-lr",
    result_count = 2
  }

})

local lr1 = table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"])
lr1.name = "iron-pipe-lr"
lr1.icon = modname.."/graphics/icons/pipe-to-ground-lr.png"
lr1.icon_size = 64
lr1.minable.result = "iron-pipe-lr"
lr1.max_health = 300
lr1.fluid_box.pipe_connections[2].max_underground_distance = lr1.fluid_box.pipe_connections[2].max_underground_distance*4
lr1.fast_replaceable_group = "pipe-to-ground"
data:extend({ lr1 })


table.insert(data.raw["technology"]["fluid-handling"].effects,{type="unlock-recipe",recipe="iron-pipe-lr"})
