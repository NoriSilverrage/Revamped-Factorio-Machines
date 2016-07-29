data:extend({ 
 {
    type = "item",
    name = "underground-belt-lr",
    icon = modname.."/graphics/icons/underground-belt-50.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    order = "b[underground-belt]-a[underground-belt]-b",
    place_result = "underground-belt-lr",
    stack_size = 50
  },
  
 {
    type = "item",
    name = "fast-underground-belt-lr",
    icon = modname.."/graphics/icons/fast-underground-belt-50.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    order = "b[underground-belt]-b[fast-underground-belt]-b",
    place_result = "fast-underground-belt-lr",
    stack_size = 50
  },

 {
    type = "item",
    name = "express-underground-belt-lr",
    icon = modname.."/graphics/icons/express-underground-belt-50.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    order = "b[underground-belt]-c[express-underground-belt]-b",
    place_result = "express-underground-belt-lr",
    stack_size = 50
  },  
  
  {
    type = "recipe",
    name = "underground-belt-lr",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"underground-belt", 20}
    },
    result = "underground-belt-lr",
    result_count = 2
  },

  {
    type = "recipe",
    name = "fast-underground-belt-lr",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"fast-underground-belt", 20}
    },
    result = "fast-underground-belt-lr",
    result_count = 2
  },
  
  {
    type = "recipe",
    name = "express-underground-belt-lr",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"express-underground-belt", 20}
    },
    result = "express-underground-belt-lr",
    result_count = 2
  }
  
})

local lr1 = table.deepcopy(data.raw["underground-belt"]["underground-belt"])
lr1.name = "underground-belt-lr"
lr1.icon = modname.."/graphics/icons/underground-belt-50.png"
lr1.minable.result = "underground-belt-lr"
lr1.max_distance = 50
lr1.fast_replaceable_group = "underground-belt"
data:extend({ lr1 })

local lr2 = table.deepcopy(data.raw["underground-belt"]["fast-underground-belt"])
lr2.name = "fast-underground-belt-lr"
lr2.icon = modname.."/graphics/icons/fast-underground-belt-50.png"
lr2.minable.result = "fast-underground-belt-lr"
lr2.max_distance = 50
lr2.fast_replaceable_group = "underground-belt"
data:extend({ lr2 })

local lr3 = table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
lr3.name = "express-underground-belt-lr"
lr3.icon = modname.."/graphics/icons/express-underground-belt-50.png"
lr3.minable.result = "express-underground-belt-lr"
lr3.max_distance = 50
lr3.fast_replaceable_group = "underground-belt"
data:extend({ lr3 })


table.insert(data.raw["technology"]["logistics"].effects,{type="unlock-recipe",recipe="underground-belt-lr"})
table.insert(data.raw["technology"]["logistics-2"].effects,{type="unlock-recipe",recipe="fast-underground-belt-lr"})
table.insert(data.raw["technology"]["logistics-3"].effects,{type="unlock-recipe",recipe="express-underground-belt-lr"})