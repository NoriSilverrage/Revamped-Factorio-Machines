data:extend({ 
 {
    type = "item",
    name = "iron-pipe-mr",
    icon = modname.."/graphics/icons/pipe-to-ground.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    order = "a[pipe]-a[pipe]-a",
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
mr1.icon = modname.."/graphics/icons/pipe-to-ground.png"
mr1.minable.result = "iron-pipe-mr"
mr1.fluid_box.pipe_connections.max_underground_distance = 20
mr1.fast_replaceable_group = "pipe-to-ground"
data:extend({ mr1 })


table.insert(data.raw["technology"]["logistics"].effects,{type="unlock-recipe",recipe="iron-pipe-mr"})