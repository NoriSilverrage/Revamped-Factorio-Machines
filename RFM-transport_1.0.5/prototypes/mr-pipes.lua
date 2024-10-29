data:extend({
 {
    type = "item",
    name = "iron-pipe-mr",
    icon = modname.."/graphics/icons/pipe-to-ground-mr.png",
    icon_size = 64,
    subgroup = "energy-pipe-distribution",
    order = "a[pipe]-b[pipe-to-ground]-c",
    place_result = "iron-pipe-mr",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "iron-pipe-mr",
    enabled = "false",
    ingredients =
    {
      {"pipe-to-ground", 4}
    },
    result = "iron-pipe-mr",
    result_count = 2
  }

})

local mr1 = table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"])
mr1.name = "iron-pipe-mr"
mr1.icon = modname.."/graphics/icons/pipe-to-ground-mr.png"
mr1.icon_size = 64
mr1.minable.result = "iron-pipe-mr"
mr1.max_health = 225
mr1.fluid_box.pipe_connections[2].max_underground_distance = mr1.fluid_box.pipe_connections[2].max_underground_distance*2
mr1.fast_replaceable_group = "pipe-to-ground"
data:extend({ mr1 })

table.insert(data.raw["technology"]["fluid-handling"].effects,{type="unlock-recipe",recipe="iron-pipe-mr"})
