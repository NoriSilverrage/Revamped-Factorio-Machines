data:extend({ 
 {
    type = "item",
    name = "transport-belt-mr",
    icon = modname.."/graphics/icons/underground-belt-20.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    order = "b[underground-belt]-a[underground-belt]-a",
    place_result = "transport-belt-mr",
    stack_size = 50
  },
  
 {
    type = "item",
    name = "fast-transport-belt-mr",
    icon = modname.."/graphics/icons/fast-underground-belt-20.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    order = "b[underground-belt]-b[fast-underground-belt]-a",
    place_result = "fast-transport-belt-mr",
    stack_size = 50
  },

 {
    type = "item",
    name = "express-transport-belt-mr",
    icon = modname.."/graphics/icons/express-underground-belt-20.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    order = "b[underground-belt]-c[express-underground-belt]-a",
    place_result = "express-transport-belt-mr",
    stack_size = 50
  },  
  
  {
    type = "recipe",
    name = "transport-belt-mr",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {"underground-belt", 8}
    },
    result = "transport-belt-mr",
    result_count = 2
  },

  {
    type = "recipe",
    name = "fast-transport-belt-mr",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {"fast-underground-belt", 8}
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
      {"express-underground-belt", 8}
    },
    result = "express-transport-belt-mr",
    result_count = 2
  }
  
})

local mr1 = table.deepcopy(data.raw["underground-belt"]["underground-belt"])
mr1.name = "transport-belt-mr"
mr1.icon = modname.."/graphics/icons/express-underground-belt-20.png"
mr1.minable.result = "transport-belt-mr"
mr1.max_distance = 20
mr1.fast_replaceable_group = "underground-belt"
data:extend({ mr1 })

local mr2 = table.deepcopy(data.raw["underground-belt"]["fast-underground-belt"])
mr2.name = "fast-transport-belt-mr"
mr2.icon = modname.."/graphics/icons/express-underground-belt-20.png"
mr2.minable.result = "fast-transport-belt-mr"
mr2.max_distance = 20
mr2.fast_replaceable_group = "underground-belt"
data:extend({ mr2 })

local mr3 = table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
mr3.name = "express-transport-belt-mr"
mr3.icon = modname.."/graphics/icons/express-underground-belt-20.png"
mr3.minable.result = "express-transport-belt-mr"
mr3.max_distance = 20
mr3.fast_replaceable_group = "underground-belt"
data:extend({ mr3 })


table.insert(data.raw["technology"]["logistics"].effects,{type="unlock-recipe",recipe="transport-belt-mr"})
table.insert(data.raw["technology"]["logistics-2"].effects,{type="unlock-recipe",recipe="fast-transport-belt-mr"})
table.insert(data.raw["technology"]["logistics-3"].effects,{type="unlock-recipe",recipe="express-transport-belt-mr"})