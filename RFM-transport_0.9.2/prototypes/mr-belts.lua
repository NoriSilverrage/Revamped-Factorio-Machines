data:extend({ 
 {
    type = "item",
    name = "basic-transport-belt-mr",
    icon = "__ex-range__/graphics/icons/basic-transport-belt-to-ground-20.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    order = "b[transport-belt-to-ground]-a[basic-transport-belt-to-ground]-a",
    place_result = "basic-transport-belt-mr",
    stack_size = 50
  },
  
 {
    type = "item",
    name = "fast-transport-belt-mr",
    icon = "__ex-range__/graphics/icons/fast-transport-belt-to-ground-20.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    order = "b[transport-belt-to-ground]-b[fast-transport-belt-to-ground]-a",
    place_result = "fast-transport-belt-mr",
    stack_size = 50
  },

 {
    type = "item",
    name = "express-transport-belt-mr",
    icon = "__ex-range__/graphics/icons/express-transport-belt-to-ground-20.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    order = "b[transport-belt-to-ground]-c[express-transport-belt-to-ground]-a",
    place_result = "express-transport-belt-mr",
    stack_size = 50
  },  
  
  {
    type = "recipe",
    name = "basic-transport-belt-mr",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {"basic-transport-belt-to-ground", 8}
    },
    result = "basic-transport-belt-mr",
    result_count = 2
  },

  {
    type = "recipe",
    name = "fast-transport-belt-mr",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {"fast-transport-belt-to-ground", 8}
    },
    result = "fast-transport-belt-mr",
    result_count = 2
  },
  
  {
    type = "recipe",
    name = "express-transport-belt-mr",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {"express-transport-belt-to-ground", 8}
    },
    result = "express-transport-belt-mr",
    result_count = 2
  }
  
})

local mr1 = table.deepcopy(data.raw["transport-belt-to-ground"]["basic-transport-belt-to-ground"])
mr1.name = "basic-transport-belt-mr"
mr1.icon = "__ex-range__/graphics/icons/express-transport-belt-to-ground-20.png"
mr1.minable.result = "basic-transport-belt-mr"
mr1.max_distance = 20
mr1.fast_replaceable_group = "transport-belt-to-ground"
data:extend({ mr1 })

local mr2 = table.deepcopy(data.raw["transport-belt-to-ground"]["fast-transport-belt-to-ground"])
mr2.name = "fast-transport-belt-mr"
mr2.icon = "__ex-range__/graphics/icons/express-transport-belt-to-ground-20.png"
mr2.minable.result = "fast-transport-belt-mr"
mr2.max_distance = 20
mr2.fast_replaceable_group = "transport-belt-to-ground"
data:extend({ mr2 })

local mr3 = table.deepcopy(data.raw["transport-belt-to-ground"]["express-transport-belt-to-ground"])
mr3.name = "express-transport-belt-mr"
mr3.icon = "__ex-range__/graphics/icons/express-transport-belt-to-ground-20.png"
mr3.minable.result = "express-transport-belt-mr"
mr3.max_distance = 20
mr3.fast_replaceable_group = "transport-belt-to-ground"
data:extend({ mr3 })


table.insert(data.raw["technology"]["logistics"].effects,{type="unlock-recipe",recipe="basic-transport-belt-mr"})
table.insert(data.raw["technology"]["logistics-2"].effects,{type="unlock-recipe",recipe="fast-transport-belt-mr"})
table.insert(data.raw["technology"]["logistics-3"].effects,{type="unlock-recipe",recipe="express-transport-belt-mr"})