data:extend({
 {
    type = "item",
    name = "turbo-underground-belt-mr",
    icon = modname.."/graphics/icons/purple-underground-belt-20.png",
    icon_size = 64,
    subgroup = "belt",
    order = "b[underground-belt]-d[turbo-underground-belt]-a",
    place_result = "turbo-underground-belt-mr",
    stack_size = 50
  },

 {
    type = "item",
    name = "ultimate-underground-belt-mr",
    icon = modname.."/graphics/icons/green-underground-belt-20.png",
    icon_size = 64,
    subgroup = "belt",
    order = "b[underground-belt]-e[ultimate-underground-belt]-a",
    place_result = "ultimate-underground-belt-mr",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "turbo-underground-belt-mr",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {"turbo-underground-belt", 4}
    },
    result = "turbo-underground-belt-mr",
    result_count = 2
  },

  {
    type = "recipe",
    name = "ultimate-underground-belt-mr",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {"ultimate-underground-belt", 4}
    },
    result = "ultimate-underground-belt-mr",
    result_count = 2
  }

})

local mr1 = table.deepcopy(data.raw["underground-belt"]["turbo-underground-belt"])
mr1.name = "turbo-underground-belt-mr"
mr1.icon = modname.."/graphics/icons/purple-underground-belt-20.png"
mr1.icon_size = 64
mr1.minable.result = "turbo-underground-belt-mr"
mr1.max_health = mr1.max_health*2
mr1.max_distance = mr1.max_distance*2
mr1.fast_replaceable_group = "transport-belt"
mr1.next_upgrade = nil
data:extend({ mr1 })

local mr2 = table.deepcopy(data.raw["underground-belt"]["ultimate-underground-belt"])
mr2.name = "ultimate-underground-belt-mr"
mr2.icon = modname.."/graphics/icons/green-underground-belt-20.png"
mr2.icon_size = 64
mr2.minable.result = "ultimate-underground-belt-mr"
mr2.max_health = mr2.max_health*2
mr2.max_distance = mr2.max_distance*2
mr2.fast_replaceable_group = "transport-belt"
mr2.next_upgrade = nil
data:extend({ mr2 })


table.insert(data.raw["technology"]["logistics-4"].effects,{type="unlock-recipe",recipe="turbo-underground-belt-mr"})
table.insert(data.raw["technology"]["logistics-5"].effects,{type="unlock-recipe",recipe="ultimate-underground-belt-mr"})







data:extend({
 {
    type = "item",
    name = "turbo-underground-belt-lr",
    icon = modname.."/graphics/icons/purple-underground-belt-50.png",
    icon_size = 64,
    subgroup = "belt",
    order = "b[underground-belt]-d[turbo-underground-belt]-b",
    place_result = "turbo-underground-belt-lr",
    stack_size = 50
  },

 {
    type = "item",
    name = "ultimate-underground-belt-lr",
    icon = modname.."/graphics/icons/green-underground-belt-50.png",
    icon_size = 64,
    subgroup = "belt",
    order = "b[underground-belt]-e[ultimate-underground-belt]-b",
    place_result = "ultimate-underground-belt-lr",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "turbo-underground-belt-lr",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"turbo-underground-belt", 8}
    },
    result = "turbo-underground-belt-lr",
    result_count = 2
  },

  {
    type = "recipe",
    name = "ultimate-underground-belt-lr",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"ultimate-underground-belt", 8}
    },
    result = "ultimate-underground-belt-lr",
    result_count = 2
  }

})

local lr1 = table.deepcopy(data.raw["underground-belt"]["turbo-underground-belt"])
lr1.name = "turbo-underground-belt-lr"
lr1.icon = modname.."/graphics/icons/purple-underground-belt-20.png"
lr1.icon_size = 64
lr1.minable.result = "turbo-underground-belt-lr"
lr1.max_health = lr1.max_health*3
lr1.max_distance = lr1.max_distance*4
lr1.fast_replaceable_group = "transport-belt"
lr1.next_upgrade = nil
data:extend({ lr1 })

local lr2 = table.deepcopy(data.raw["underground-belt"]["ultimate-underground-belt"])
lr2.name = "ultimate-underground-belt-lr"
lr2.icon = modname.."/graphics/icons/green-underground-belt-20.png"
lr2.icon_size = 64
lr2.minable.result = "ultimate-underground-belt-lr"
lr2.max_health = lr2.max_health*3
lr2.max_distance = lr2.max_distance*4
lr2.fast_replaceable_group = "transport-belt"
lr2.next_upgrade = nil
data:extend({ lr2 })


table.insert(data.raw["technology"]["logistics-4"].effects,{type="unlock-recipe",recipe="turbo-underground-belt-lr"})
table.insert(data.raw["technology"]["logistics-5"].effects,{type="unlock-recipe",recipe="ultimate-underground-belt-lr"})
