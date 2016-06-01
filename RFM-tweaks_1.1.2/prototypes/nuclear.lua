data.raw.item["steam-turbine"].stack_size = 20


data:extend({ 
 {
    type = "item",
    name = "steam-turbine-2",
    icon = "__Nucular__/graphics/icons/steam-turbine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "nuclear-structure",
    order = "b-a",
    place_result = "steam-turbine-2",
		enabled = false,
    stack_size = 20
  },
  
  {
    type = "item",
    name = "steam-turbine-3",
    icon = "__Nucular__/graphics/icons/steam-turbine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "nuclear-structure",
    order = "b-b",
    place_result = "steam-turbine-3",
		enabled = false,
    stack_size = 20
  },

  
  {
    type = "recipe",
    name = "steam-turbine-2",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
       {"steam-turbine", 1},
       {"steel-pipe", 20},
       {"electronic-circuit", 20},
       {"steel-plate", 50}
    },
    result = "steam-turbine-2"
  },
  
  {
    type = "recipe",
    name = "steam-turbine-3",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
       {"steam-turbine-2", 1},
       {"plastic-pipe", 20},
       {"advanced-circuit", 20},
       {"steel-plate", 60}
    },
    result = "steam-turbine-3"
  },


})


-- Steam Turbine Mk2 to Mk4 **************************************************************************
local turbine2 = table.deepcopy(data.raw["generator"]["steam-turbine"])
turbine2.name = "steam-turbine-2"
turbine2.effectivity = 2
turbine2.fluid_usage_per_tick = 0.75
turbine2.max_health = 400
turbine2.minable.result = "steam-turbine-2"
turbine2.fast_replaceable_group = "steam-engine"
data:extend({ turbine2 })

-- Mk 3
local turbine3 = table.deepcopy(data.raw["generator"]["steam-turbine"])
turbine3.name = "steam-turbine-3"
turbine3.effectivity = 4
turbine3.fluid_usage_per_tick = 0.5
turbine3.max_health = 500
turbine3.minable.result = "steam-turbine-3"
turbine3.fast_replaceable_group = "steam-engine"
data:extend({ turbine3 })




table.insert(data.raw["technology"]["steam-engine-generator-1"].effects,{type="unlock-recipe",recipe="steam-turbine-2"})
table.insert(data.raw["technology"]["steam-engine-generator-2"].effects,{type="unlock-recipe",recipe="steam-turbine-3"})
