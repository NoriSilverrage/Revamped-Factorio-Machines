data:extend({ 
 {
    type = "item",
    name = "crusher-2",
    icon = modname.."/graphics/icons/crusher-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "advanced-processing-machine",
    order = "f",
    place_result = "crusher-2",
		enabled = false,
    stack_size = 50
  },
  {
    type = "item",
    name = "crusher-3",
    icon = modname.."/graphics/icons/crusher-3.png",
    flags = {"goes-to-quickbar"},
    subgroup = "advanced-processing-machine",
    order = "f",
    place_result = "crusher-3",
		enabled = false,
    stack_size = 50
  },
--  {
--    type = "item",
--    name = "crusher-4",
--    icon = modname.."/graphics/icons/crusher-4.png",
--    flags = {"goes-to-quickbar"},
--    subgroup = "advanced-processing-machine",
--    order = "f",
--    place_result = "crusher-4",
--		enabled = false,
--    stack_size = 50
--  },
  
  
  {
    type = "item",
    name = "pulverizer-2",
    icon = "__hardCrafting__/graphics/icons/pulverizer.png",
    flags = {"goes-to-quickbar"},
    subgroup = "advanced-processing-machine",
    order = "g",
    place_result = "pulverizer-2",
		enabled = false,
    stack_size = 50
  },
    {
    type = "item",
    name = "pulverizer-3",
    icon = "__hardCrafting__/graphics/icons/pulverizer.png",
    flags = {"goes-to-quickbar"},
    subgroup = "advanced-processing-machine",
    order = "g",
    place_result = "pulverizer-3",
		enabled = false,
    stack_size = 50
  },
--    {
--    type = "item",
--    name = "pulverizer-4",
--    icon = "__hardCrafting__/graphics/icons/pulverizer.png",
--    flags = {"goes-to-quickbar"},
--    subgroup = "advanced-processing-machine",
--    order = "g",
--    place_result = "pulverizer-4",
--		enabled = false,
--    stack_size = 50
--  },

  {
    type = "recipe",
    name = "crusher-2",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {"crusher-v2", 1},
      {"iron-gear-wheel", 10},
      {"electronic-circuit", 5}
    },
    result = "crusher-2"
  },
  {
    type = "recipe",
    name = "crusher-3",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {"crusher-2", 1},
      {"iron-gear-wheel", 10},
      {"steel-plate", 3},
      {"advanced-circuit", 5}
    },
    result = "crusher-3"
  },
--  {
--    type = "recipe",
--    name = "crusher-4",
--    energy_required = 5,
--    enabled = "false",
--    ingredients =
--    {
--      {"crusher-3", 1},
--      {"iron-gear-wheel", 10},
--      {"processing-unit", 5},
--      {"steel-plate", 6}
--    },
--    result= "crusher-4"
--  },
  {
    type = "recipe",
    name = "pulverizer-2",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {"pulverizer", 1},
      {"steel-plate",10},
      {"iron-gear-wheel",15},
      {"electronic-circuit",5}
    },
    result = "pulverizer-2"
  },
  {
    type = "recipe",
    name = "pulverizer-3",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {"pulverizer-2", 1},
      {"steel-plate",12},
      {"iron-gear-wheel",15},
      {"advanced-circuit", 5}
    },
    result = "pulverizer-3"
  },
--  {
--    type = "recipe",
--    name = "pulverizer-4",
--    energy_required = 5,
--    enabled = "false",
--    ingredients =
--    {
--      {"pulverizer-3", 1},
--      {"steel-plate",15},
--      {"iron-gear-wheel",15},
--      {"processing-unit", 5},
--    },
--    result = "pulverizer-4"
--  }

})



-- Crusher Mk2 to Mk4 **************************************************************************
local crusher2 = table.deepcopy(data.raw["assembling-machine"]["crusher-v2"])
crusher2.name = "crusher-2"
crusher2.energy_usage = "120kW"
crusher2.minable.result = "crusher-2"
crusher2.crafting_speed = 1.5
crusher2.fast_replaceable_group = "assembling-machine"
crusher2.icon =  modname.."/graphics/icons/crusher-2.png"
crusher2.animation.filename=modname.."/graphics/entity/crusher/crusher-base-2.png"
data:extend({ crusher2 })

-- Mk 3
local crusher3 = table.deepcopy(data.raw["assembling-machine"]["crusher-v2"])
crusher3.name = "crusher-3"
crusher3.energy_usage = "170kW"
crusher3.minable.result = "crusher-3"
crusher3.crafting_speed = 2
crusher3.module_specification =
    {
        module_slots = 3,
        module_info_icon_shift = {0, 0.8}
    }
crusher3.fast_replaceable_group = "assembling-machine"
crusher3.icon =  modname.."/graphics/icons/crusher-3.png"
crusher3.animation.filename=modname.."/graphics/entity/crusher/crusher-base-3.png"
data:extend({ crusher3 })

---- Mk 4
--local crusher4 = table.deepcopy(data.raw["furnace"]["crusher"])
--crusher4.name = "crusher-4"
--crusher4.energy_usage = "210kW"
--crusher4.minable.result = "crusher-4"
--crusher4.crafting_speed = 3
--crusher4.module_specification =
--    {
--        module_slots = 4,
--        module_info_icon_shift = {0, 0.8}
--    }
--crusher4.fast_replaceable_group = "furnace"
--crusher4.icon =  modname.."/graphics/icons/crusher-4.png"
--crusher4.animation.filename=modname.."/graphics/entity/crusher/crusher-base-4.png"
--data:extend({ crusher4 })


-- Pulverizer Mk2 and MK3 *************************************************************************
local pulverizer2 = table.deepcopy(data.raw["assembling-machine"]["pulverizer"])
pulverizer2.name = "pulverizer-2"
pulverizer2.energy_usage = "210kW"
pulverizer2.crafting_speed = 1.5
pulverizer2.minable.result = "pulverizer-2"
pulverizer2.fast_replaceable_group = "assembling-machine"
pulverizer2.animation.filename=modname.."/graphics/entity/crusher/crusher-base-2.png"
data:extend({ pulverizer2 })

-- Mk3
local pulverizer3 = table.deepcopy(data.raw["assembling-machine"]["pulverizer"])
pulverizer3.name = "pulverizer-3"
pulverizer3.energy_usage = "300kW"
pulverizer3.crafting_speed = 2
pulverizer3.minable.result = "pulverizer-3"
pulverizer3.fast_replaceable_group = "assembling-machine"
pulverizer3.module_specification =
    {
        module_slots = 3,
        module_info_icon_shift = {0, 0.5},
        module_info_multi_row_initial_height_modifier = -0.3
    }
pulverizer3.fast_replaceable_group = "assembling-machine"
pulverizer3.animation.filename=modname.."/graphics/entity/crusher/crusher-base-3.png"
data:extend({ pulverizer3 })

---- Mk4
--local pulverizer4 = table.deepcopy(data.raw["assembling-machine"]["pulverizer"])
--pulverizer4.name = "pulverizer-4"
--pulverizer4.energy_usage = "370kW"
--pulverizer4.crafting_speed = 3
--pulverizer4.minable.result = "pulverizer-4"
--pulverizer4.fast_replaceable_group = "assembling-machine"
--pulverizer4.module_specification =
--    {
--        module_slots = 4,
--        module_info_icon_shift = {0, 0.5},
--        module_info_multi_row_initial_height_modifier = -0.3
--    }
--pulverizer4.fast_replaceable_group = "assembling-machine"
--pulverizer4.animation.filename=modname.."/graphics/entity/crusher/crusher-base-4.png"
--data:extend({ pulverizer4 })

table.insert(data.raw["technology"]["advanced-material-processing-2"].effects,{type="unlock-recipe",recipe="crusher-2"})
table.insert(data.raw["technology"]["advanced-material-processing-2"].effects,{type="unlock-recipe",recipe="pulverizer-2"})
table.insert(data.raw["technology"]["advanced-material-processing-3"].effects,{type="unlock-recipe",recipe="crusher-3"})
table.insert(data.raw["technology"]["advanced-material-processing-3"].effects,{type="unlock-recipe",recipe="pulverizer-3"})
--table.insert(data.raw["technology"]["advanced-material-processing-4"].effects,{type="unlock-recipe",recipe="crusher-4"})
--table.insert(data.raw["technology"]["advanced-material-processing-4"].effects,{type="unlock-recipe",recipe="pulverizer-4"})