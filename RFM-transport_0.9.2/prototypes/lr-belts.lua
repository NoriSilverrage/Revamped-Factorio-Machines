data:extend({ 
 {
    type = "item",
    name = "basic-transport-belt-lr",
    icon = "__ex-range__/graphics/icons/basic-transport-belt-to-ground-50.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    order = "b[transport-belt-to-ground]-a[basic-transport-belt-to-ground]-b",
    place_result = "basic-transport-belt-lr",
    stack_size = 50
  },
  
 {
    type = "item",
    name = "fast-transport-belt-lr",
    icon = "__ex-range__/graphics/icons/fast-transport-belt-to-ground-50.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    order = "b[transport-belt-to-ground]-b[fast-transport-belt-to-ground]-b",
    place_result = "fast-transport-belt-lr",
    stack_size = 50
  },

 {
    type = "item",
    name = "express-transport-belt-lr",
    icon = "__ex-range__/graphics/icons/express-transport-belt-to-ground-50.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    order = "b[transport-belt-to-ground]-c[express-transport-belt-to-ground]-b",
    place_result = "express-transport-belt-lr",
    stack_size = 50
  },  
  
  {
    type = "recipe",
    name = "basic-transport-belt-lr",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"basic-transport-belt-to-ground", 20}
    },
    result = "basic-transport-belt-lr",
    result_count = 2
  },

  {
    type = "recipe",
    name = "fast-transport-belt-lr",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"fast-transport-belt-to-ground", 20}
    },
    result = "fast-transport-belt-lr",
    result_count = 2
  },
  
  {
    type = "recipe",
    name = "express-transport-belt-lr",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"express-transport-belt-to-ground", 20}
    },
    result = "express-transport-belt-lr",
    result_count = 2
  }
  
})

local lr1 = table.deepcopy(data.raw["transport-belt-to-ground"]["basic-transport-belt-to-ground"])
lr1.name = "basic-transport-belt-lr"
lr1.icon = "__ex-range__/graphics/icons/basic-transport-belt-to-ground-50.png"
lr1.minable.result = "basic-transport-belt-lr"
lr1.max_distance = 50
lr1.fast_replaceable_group = "transport-belt-to-ground"
data:extend({ lr1 })

local lr2 = table.deepcopy(data.raw["transport-belt-to-ground"]["fast-transport-belt-to-ground"])
lr2.name = "fast-transport-belt-lr"
lr2.icon = "__ex-range__/graphics/icons/fast-transport-belt-to-ground-50.png"
lr2.minable.result = "fast-transport-belt-lr"
lr2.max_distance = 50
lr2.fast_replaceable_group = "transport-belt-to-ground"
data:extend({ lr2 })

local lr3 = table.deepcopy(data.raw["transport-belt-to-ground"]["express-transport-belt-to-ground"])
lr3.name = "express-transport-belt-lr"
lr3.icon = "__ex-range__/graphics/icons/express-transport-belt-to-ground-50.png"
lr3.minable.result = "express-transport-belt-lr"
lr3.max_distance = 50
lr3.fast_replaceable_group = "transport-belt-to-ground"
data:extend({ lr3 })


table.insert(data.raw["technology"]["logistics"].effects,{type="unlock-recipe",recipe="basic-transport-belt-lr"})
table.insert(data.raw["technology"]["logistics-2"].effects,{type="unlock-recipe",recipe="fast-transport-belt-lr"})
table.insert(data.raw["technology"]["logistics-3"].effects,{type="unlock-recipe",recipe="express-transport-belt-lr"})