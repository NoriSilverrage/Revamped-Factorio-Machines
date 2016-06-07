data.raw.technology["petroleum-generator"].upgrade = true
data:extend({ 
 {
    type = "item",
    name = "petroleum-generator-2",
    icon = "__KS_Power__/graphics/diesel-generator-icon.png",
	flags = {"goes-to-quickbar"},
	subgroup = "energy",	
	order = "b[steam-power]-d[petroleum-generator]-b",	
    place_result = "petroleum-generator-2",
	enabled = false,
    stack_size = 20
  },
  
  {
    type = "item",
    name = "petroleum-generator-3",
    icon = "__KS_Power__/graphics/diesel-generator-icon.png",
	flags = {"goes-to-quickbar"},
	subgroup = "energy",	
	order = "b[steam-power]-d[petroleum-generator]-c",	
    place_result = "petroleum-generator-3",
    enabled = false,
    stack_size = 20
  },
  ---***Recipes**---
  {
    type = "recipe",
    name = "petroleum-generator-2",
    energy_required = 15,
    enabled = "false",
    ingredients =
    {
       {"petroleum-generator", 1},
       {"steel-pipe", 10},
       {"electronic-circuit", 16},
       {"steel-plate", 12}
    },
    result = "petroleum-generator-2"
  },
  
  {
    type = "recipe",
    name = "petroleum-generator-3",
    energy_required = 15,
    enabled = "false",
    ingredients =
    {
       {"petroleum-generator-2", 1},
       {"plastic-pipe", 10},
       {"advanced-circuit", 16},
       {"steel-plate", 12}
    },
    result = "petroleum-generator-3"
  },
  ---***Tech 2**---
  {
    type = "technology",
    name = "petroleum-generator-2",
    icon = "__KS_Power__/graphics/diesel-generator-t1.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "petroleum-generator-2"
      }
    },
    prerequisites = {"petroleum-generator"},
    upgrade = true
    unit =
    {
      count = 225,
      ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
      time = 60
    },
    order = "f-b-d"
  },
  ---***Tech 3**---
  {
    type = "technology",
    name = "petroleum-generator",
    icon = "__KS_Power__/graphics/diesel-generator-t1.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "petroleum-generator-3"
      },
    },
    prerequisites = {"petroleum-generator-2"},
    upgrade = true
    unit =
    {
      count = 300,
      ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
      time = 60
    },
    order = "f-b-d"
  },
})


-- Diesel 2 and 3 **************************************************************************
local diesel2 = table.deepcopy(data.raw["generator"]["petroleum-generator"])
diesel2.name = "petroleum-generator-2"
diesel2.effectivity = 600
diesel2.fluid_usage_per_tick = 0.00375
diesel2.max_health = 400
diesel2.minable.result = "petroleum-generator-2"
diesel2.fast_replaceable_group = "generator"
data:extend({ diesel2 })

-- Mk 3
local diesel3 = table.deepcopy(data.raw["generator"]["petroleum-generator"])
diesel3.name = "petroleum-generator-3"
diesel3.effectivity = 1200
diesel3.fluid_usage_per_tick = 0.0025
diesel3.max_health = 500
diesel3.minable.result = "petroleum-generator-3"
diesel3.fast_replaceable_group = "generator"
data:extend({ diesel3 })
