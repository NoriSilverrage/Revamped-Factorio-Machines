data.raw.item["stone-pipe"].stack_size = 100
data.raw.item["stone-pipe-to-ground"].stack_size = 100
data.raw.item["copper-pipe"].stack_size = 100
data.raw.item["copper-pipe-to-ground"].stack_size = 100
data.raw.item["steel-pipe"].stack_size = 100
data.raw.item["steel-pipe-to-ground"].stack_size = 100
data.raw.item["plastic-pipe"].stack_size = 100
data.raw.item["plastic-pipe-to-ground"].stack_size = 100

data.raw.item["steam-engine-2"].stack_size = 50
data.raw.item["steam-engine-3"].stack_size = 50
data.raw.item["medium-electric-pole-2"].stack_size = 100
data.raw.item["medium-electric-pole-3"].stack_size = 100
data.raw.item["medium-electric-pole-4"].stack_size = 100
data.raw.item["big-electric-pole-2"].stack_size = 100
data.raw.item["big-electric-pole-3"].stack_size = 100
data.raw.item["big-electric-pole-4"].stack_size = 100

data.raw.item["green-transport-belt"].stack_size = 100
data.raw.item["purple-transport-belt"].stack_size = 100

--Assembler
data.raw.technology["electronics-machine-1"].enabled = false
data.raw.technology["electronics-machine-2"].enabled = false
data.raw.technology["electronics-machine-3"].enabled = false

data.raw["assembling-machine"]["assembling-machine-4"].crafting_speed = 1.75  -- Original 1.875
data.raw["assembling-machine"]["assembling-machine-4"].energy_usage = "290kW"  -- Original 300KW/330
data.raw["assembling-machine"]["assembling-machine-4"].module_specification =
    {
        module_slots = 4,
        module_info_icon_shift = {0, 0.5},
        module_info_multi_row_initial_height_modifier = -0.3
    }


data.raw["assembling-machine"]["assembling-machine-5"].crafting_speed = 2.0    -- Original 2.5
data.raw["assembling-machine"]["assembling-machine-5"].energy_usage = "360kW"  -- Original 390KW/440

data.raw["assembling-machine"]["assembling-machine-6"].crafting_speed = 2.5   -- Original 3.5
data.raw["assembling-machine"]["assembling-machine-6"].energy_usage = "440kW" -- Original 480KW/630
data.raw["assembling-machine"]["assembling-machine-6"].module_specification =
    {
        module_slots = 5,
        module_info_icon_shift = {0, 0.5},
        module_info_multi_row_initial_height_modifier = -0.3
    }


--Mining
data.raw.technology["bob-area-drills-1"].enabled = false
data.raw.technology["bob-area-drills-2"].enabled = false
data.raw.technology["bob-area-drills-3"].enabled = false
data.raw.technology["bob-area-drills-4"].enabled = false


data.raw["mining-drill"]["bob-area-mining-drill-1"].energy_usage = "115kW"
data.raw["mining-drill"]["bob-area-mining-drill-1"].mining_speed = 0.5
table.insert(data.raw["technology"]["bob-drills-1"].effects,{type = "unlock-recipe",recipe = "bob-area-mining-drill-1"})

data.raw["mining-drill"]["bob-area-mining-drill-2"].energy_usage = "180kW"
data.raw["mining-drill"]["bob-area-mining-drill-2"].mining_speed = 0.75
data.raw["mining-drill"]["bob-area-mining-drill-2"].resource_searching_radius = 3.49
data.raw["mining-drill"]["bob-area-mining-drill-2"].module_specification =
    {
        module_slots = 3,
        module_info_icon_shift = {0, 0.5},
        module_info_multi_row_initial_height_modifier = -0.3
    }
table.insert(data.raw["technology"]["bob-drills-2"].effects,{type = "unlock-recipe",recipe = "bob-area-mining-drill-2"})

data.raw["mining-drill"]["bob-area-mining-drill-3"].energy_usage = "240kW"
data.raw["mining-drill"]["bob-area-mining-drill-3"].mining_speed = 1
data.raw["mining-drill"]["bob-area-mining-drill-3"].resource_searching_radius = 4.49
table.insert(data.raw["technology"]["bob-drills-3"].effects,{type = "unlock-recipe",recipe = "bob-area-mining-drill-3"})

data.raw["mining-drill"]["bob-area-mining-drill-4"].energy_usage = "320kW"
data.raw["mining-drill"]["bob-area-mining-drill-4"].mining_speed = 1.25
data.raw["mining-drill"]["bob-area-mining-drill-4"].resource_searching_radius = 4.49
data.raw["mining-drill"]["bob-area-mining-drill-4"].module_specification =
    {
        module_slots = 4,
        module_info_icon_shift = {0, 0.5},
        module_info_multi_row_initial_height_modifier = -0.3
    }
table.insert(data.raw["technology"]["bob-drills-4"].effects,{type = "unlock-recipe",recipe = "bob-area-mining-drill-4"})


data.raw["mining-drill"]["bob-mining-drill-1"].energy_usage = "135kW"
data.raw["mining-drill"]["bob-mining-drill-1"].mining_speed = 0.75
data.raw["mining-drill"]["bob-mining-drill-1"].module_specification =
    {
        module_slots = 3,
        module_info_icon_shift = {0, 0.5},
        module_info_multi_row_initial_height_modifier = -0.3
    }

    
data.raw["mining-drill"]["bob-mining-drill-2"].energy_usage = "200kW" --Original 648KW - 90KW base * 2x speed * 1.1 module
data.raw["mining-drill"]["bob-mining-drill-2"].mining_speed = 1 -- 2x
data.raw["mining-drill"]["bob-mining-drill-2"].module_specification =
    {
        module_slots = 4,
        module_info_icon_shift = {0, 0.5},
        module_info_multi_row_initial_height_modifier = -0.3
    }

data.raw["mining-drill"]["bob-mining-drill-3"].energy_usage = "320kW" --Original 1224KW - 90KW base * 3x speed * 1.2 module
data.raw["mining-drill"]["bob-mining-drill-3"].mining_speed = 1.5 -- Original 3x
data.raw["mining-drill"]["bob-mining-drill-3"].module_specification =
    {
        module_slots = 5,
        module_info_icon_shift = {0, 0.5},
        module_info_multi_row_initial_height_modifier = -0.3
    }
    
data.raw["mining-drill"]["bob-mining-drill-4"].energy_usage = "430kW" --Original 1920KW - 90KW base * 4x speed * 1.2 module
data.raw["mining-drill"]["bob-mining-drill-4"].mining_speed = 2 --Original 4x
data.raw["mining-drill"]["bob-mining-drill-4"].module_specification =
    {
        module_slots = 5,
        module_info_icon_shift = {0, 0.5},
        module_info_multi_row_initial_height_modifier = -0.3
    }
    
  
  
--Pumpjacks  
data.raw["mining-drill"]["bob-pumpjack-1"].mining_speed = 1.5
data.raw["mining-drill"]["bob-pumpjack-1"].energy_usage = "135kW"
data.raw["mining-drill"]["bob-pumpjack-1"].module_specification =
    {
        module_slots = 2,
        module_info_icon_shift = {0, 0.5},
        module_info_multi_row_initial_height_modifier = -0.3
    }


data.raw["mining-drill"]["bob-pumpjack-2"].mining_speed = 1.75
data.raw["mining-drill"]["bob-pumpjack-2"].energy_usage = "170kW"
data.raw["mining-drill"]["bob-pumpjack-2"].module_specification =
    {
        module_slots = 3,
        module_info_icon_shift = {0, 0.5},
        module_info_multi_row_initial_height_modifier = -0.3
    }

data.raw["mining-drill"]["bob-pumpjack-3"].mining_speed = 2.0
data.raw["mining-drill"]["bob-pumpjack-3"].energy_usage = "200kW"
data.raw["mining-drill"]["bob-pumpjack-3"].module_specification =
    {
        module_slots = 4,
        module_info_icon_shift = {0, 0.5},
        module_info_multi_row_initial_height_modifier = -0.3
    }

data.raw["mining-drill"]["bob-pumpjack-4"].mining_speed = 2.5
data.raw["mining-drill"]["bob-pumpjack-4"].energy_usage = "250kW"
data.raw["mining-drill"]["bob-pumpjack-4"].module_specification =
    {
        module_slots = 4,
        module_info_icon_shift = {0, 0.5},
        module_info_multi_row_initial_height_modifier = -0.3
    }
  
  
  
--Logistic
--Green
data.raw.recipe["green-splitter"].category = "crafting-with-fluid"
data.raw.recipe["green-splitter"].ingredients =
    {
      {"express-splitter", 1},
      {"advanced-circuit", 10},
      {"iron-gear-wheel", 15},
      {type="fluid", name="lubricant", amount=12}
    }
	
data.raw.recipe["green-transport-belt"].category = "crafting-with-fluid"
data.raw.recipe["green-transport-belt"].ingredients =
    {
      {"iron-gear-wheel", 10},
      {"express-transport-belt", 1},
      {type="fluid", name="lubricant", amount=3}
    }

    
data.raw.recipe["green-transport-belt-to-ground"].category = "crafting-with-fluid"
data.raw.recipe["green-transport-belt-to-ground"].ingredients =
    {
      {"express-transport-belt-to-ground", 2},
      {"iron-gear-wheel", 30},
      {type="fluid", name="lubricant", amount=15}
    }
data.raw["transport-belt-to-ground"]["green-transport-belt-to-ground"].max_distance = 15
	
    
--Purple
data.raw.recipe["purple-splitter"].category = "crafting-with-fluid"
data.raw.recipe["purple-splitter"].ingredients =
    {
      {"green-splitter", 1},
      {"processing-unit", 10},
      {"iron-gear-wheel", 20},
      {type="fluid", name="lubricant", amount=16}
    }

data.raw.recipe["purple-transport-belt"].category = "crafting-with-fluid"
data.raw.recipe["purple-transport-belt"].ingredients =
    {
      {"iron-gear-wheel", 10},
      {"green-transport-belt", 1},
      {type="fluid", name="lubricant", amount=4}
    }

    
data.raw.recipe["purple-transport-belt-to-ground"].category = "crafting-with-fluid"
data.raw.recipe["purple-transport-belt-to-ground"].ingredients =
    {
      {"green-transport-belt-to-ground", 2},
      {"iron-gear-wheel", 40},
      {type="fluid", name="lubricant", amount=20}
    }
data.raw["transport-belt-to-ground"]["purple-transport-belt-to-ground"].max_distance = 20
	
    
    
---- Robots ----
data:extend(
{
  {
    type = "technology",
    name = "bob-robotics-1",
    icon = "__boblogistics__/graphics/icons/technology/robotics-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-robot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-construction-robot-2"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 10
      },
    },
    prerequisites =
    {
      "construction-robotics",
      "logistic-robotics",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-a-a",
  },

  {
    type = "technology",
    name = "bob-robotics-2",
    icon = "__boblogistics__/graphics/icons/technology/robotics-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-robot-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-construction-robot-3"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 15
      },
    },
    prerequisites =
    {
      "bob-robotics-1",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-a-b",
  },

  {
    type = "technology",
    name = "bob-robotics-3",
    icon = "__boblogistics__/graphics/icons/technology/robotics-4.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-robot-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-construction-robot-4"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 20
      },
    },
    prerequisites =
    {
      "bob-robotics-2",
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-a-c",
  }
})

data.raw.recipe["flying-robot-frame-2"].ingredients = {{"electric-engine-unit", 1},{"battery", 4},{"steel-plate", 1},{"advanced-circuit", 4}}
    
--Log
data.raw["logistic-robot"]["bob-logistic-robot-2"].speed = 0.0625
data.raw["logistic-robot"]["bob-logistic-robot-2"].max_energy = "400kJ"
data.raw["logistic-robot"]["bob-logistic-robot-2"].energy_per_tick = "9J"
data.raw["logistic-robot"]["bob-logistic-robot-2"].energy_per_move = "900J"
data.raw.recipe["bob-logistic-robot-2"].ingredients = {{"logistic-robot", 1},{"advanced-circuit", 2}}

data.raw["logistic-robot"]["bob-logistic-robot-3"].speed = 0.075
data.raw["logistic-robot"]["bob-logistic-robot-3"].max_energy = "500kJ"
data.raw["logistic-robot"]["bob-logistic-robot-3"].energy_per_tick = "7.5J"
data.raw["logistic-robot"]["bob-logistic-robot-3"].energy_per_move = "750J"
data.raw["logistic-robot"]["bob-logistic-robot-3"].max_payload_size = 3
data.raw.recipe["bob-logistic-robot-3"].ingredients = {{"bob-logistic-robot-2", 1},{"flying-robot-frame-2", 1}}

data.raw["logistic-robot"]["bob-logistic-robot-4"].speed = 0.1
data.raw["logistic-robot"]["bob-logistic-robot-4"].max_energy = "600kJ"
data.raw["logistic-robot"]["bob-logistic-robot-4"].energy_per_tick = "6J"
data.raw["logistic-robot"]["bob-logistic-robot-4"].energy_per_move = "600J"
data.raw["logistic-robot"]["bob-logistic-robot-4"].max_payload_size = 4
data.raw.recipe["bob-logistic-robot-4"].ingredients = {{"bob-logistic-robot-2", 1},{"processing-unit", 2}}

--Con
data.raw["construction-robot"]["bob-construction-robot-2"].speed = 0.075
data.raw["construction-robot"]["bob-construction-robot-2"].max_energy = "400kJ"
data.raw["construction-robot"]["bob-construction-robot-2"].energy_per_tick = "9J"
data.raw["construction-robot"]["bob-construction-robot-2"].energy_per_move = "900J"
data.raw["construction-robot"]["bob-construction-robot-2"].max_payload_size = 2
data.raw.recipe["bob-construction-robot-2"].ingredients = {{"construction-robot", 1},{"electronic-circuit", 2}}

data.raw["construction-robot"]["bob-construction-robot-3"].speed = 0.09
data.raw["construction-robot"]["bob-construction-robot-3"].max_energy = "500kJ"
data.raw["construction-robot"]["bob-construction-robot-3"].energy_per_tick = "7.5J"
data.raw["construction-robot"]["bob-construction-robot-3"].energy_per_move = "750J"
data.raw["construction-robot"]["bob-construction-robot-3"].max_payload_size = 3
data.raw.recipe["bob-construction-robot-3"].ingredients = {{"bob-construction-robot-2", 1},{"flying-robot-frame-2", 1}}

data.raw["construction-robot"]["bob-construction-robot-4"].speed = 0.12
data.raw["construction-robot"]["bob-construction-robot-4"].max_energy = "600kJ"
data.raw["construction-robot"]["bob-construction-robot-4"].energy_per_tick = "6J"
data.raw["construction-robot"]["bob-construction-robot-4"].energy_per_move = "600J"
data.raw["construction-robot"]["bob-construction-robot-4"].max_payload_size = 3
data.raw.recipe["bob-construction-robot-4"].ingredients = {{"bob-construction-robot-3", 1},{"advanced-circuit", 2}}

--Roboports
data:extend(
{
    {
    type = "technology",
    name = "bob-robo-modular-1",
    icon = "__boblogistics__/graphics/icons/technology/modular-roboport.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "roboport"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robochest"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-zone-expander"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port-large"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-antenna-1"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-chargepad-1"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-door-1"
      },
    },
    prerequisites =
    {
      "robotics",
      "flying",
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-b-a",
  },

  {
    type = "technology",
    name = "bob-robo-modular-2",
    icon = "__boblogistics__/graphics/icons/technology/modular-roboport-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-roboport-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robochest-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-zone-expander-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port-large-2"
      },
    },
    prerequisites =
    {
      "bob-robo-modular-1",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-b-a",
  },

  {
    type = "technology",
    name = "bob-robo-modular-3",
    icon = "__boblogistics__/graphics/icons/technology/modular-roboport-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-roboport-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robochest-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-zone-expander-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port-large-3"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-antenna-2"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-chargepad-2"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-door-2"
      },
    },
    prerequisites =
    {
      "bob-robo-modular-2",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-b-c",
  },

  {
    type = "technology",
    name = "bob-robo-modular-4",
    icon = "__boblogistics__/graphics/icons/technology/modular-roboport-4.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-roboport-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robochest-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-zone-expander-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-robo-charge-port-large-4"
      },
    },
    prerequisites =
    {
      "bob-robo-modular-3",
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-b-d",
  }
})  

data.raw.recipe["roboport-antenna-2"].ingredients = {{"steel-plate", 1},{"copper-cable", 2},{"processing-unit", 5}}
data.raw.recipe["roboport-chargepad-2"].ingredients = {{"steel-plate", 2},{"advanced-circuit", 5},{"battery", 2}}
data.raw.recipe["roboport-door-2"].ingredients = {{"steel-plate", 15},{"iron-gear-wheel", 20}}


data.raw.recipe["bob-roboport-2"].ingredients = {{"roboport", 1},{"steel-plate", 15},{"roboport-antenna-1", 5},{"roboport-chargepad-1", 4},{"roboport-door-1", 1}}
data.raw.recipe["bob-roboport-3"].ingredients = {{"bob-roboport-2", 1},{"steel-plate", 15},{"roboport-antenna-2", 5},{"roboport-chargepad-2", 4},{"roboport-door-2", 1}}
data.raw.recipe["bob-roboport-4"].ingredients = {{"bob-roboport-3", 1},{"steel-plate", 15},{"roboport-antenna-2", 5},{"roboport-chargepad-2", 4},{"roboport-door-2", 1}}

      
data.raw.recipe["bob-robochest"].ingredients = {{"smart-chest", 1},{"roboport-antenna-1", 1},{"roboport-chargepad-1", 1},{"roboport-door-1", 1}}
data.raw.recipe["bob-robochest-2"].ingredients = {{"bob-robochest", 1},{"roboport-antenna-1", 1},{"roboport-chargepad-1", 1},{"roboport-door-1", 1}}
data.raw.recipe["bob-robochest-3"].ingredients = {{"bob-robochest-2", 1},{"roboport-antenna-2", 1},{"roboport-chargepad-2", 1},{"roboport-door-2", 1}}
data.raw.recipe["bob-robochest-4"].ingredients = {{"bob-robochest-3", 1},{"roboport-antenna-2", 1},{"roboport-chargepad-2", 1},{"roboport-door-2", 1}}

data.raw.recipe["bob-logistic-zone-expander"].ingredients = {{"steel-plate", 5},{"roboport-antenna-1", 3},{"roboport-chargepad-1", 1}}
data.raw.recipe["bob-logistic-zone-expander-2"].ingredients = {{"bob-logistic-zone-expander", 1},{"steel-plate", 5},{"roboport-antenna-1", 3},{"roboport-chargepad-1", 1}}
data.raw.recipe["bob-logistic-zone-expander-3"].ingredients = {{"bob-logistic-zone-expander-2", 1},{"steel-plate", 5},{"roboport-antenna-2", 3},{"roboport-chargepad-2", 1}}
data.raw.recipe["bob-logistic-zone-expander-4"].ingredients = {{"bob-logistic-zone-expander-3", 1},{"steel-plate", 5},{"roboport-antenna-2", 3},{"roboport-chargepad-2", 1}}

data.raw.recipe["bob-robo-charge-port"].ingredients = {{"steel-plate", 10},{"roboport-antenna-1", 1},{"roboport-chargepad-1", 4}}
data.raw.recipe["bob-robo-charge-port-2"].ingredients = {{"bob-robo-charge-port", 1},{"steel-plate", 10},{"roboport-antenna-1", 1},{"roboport-chargepad-1", 4}}
data.raw.recipe["bob-robo-charge-port-3"].ingredients = {{"bob-robo-charge-port-2", 1},{"steel-plate", 10},{"roboport-antenna-2", 1},{"roboport-chargepad-2", 4}}
data.raw.recipe["bob-robo-charge-port-4"].ingredients = {{"bob-robo-charge-port-3", 1},{"steel-plate", 10},{"roboport-antenna-2", 1},{"roboport-chargepad-2", 4}}


data.raw.recipe["bob-robo-charge-port-large"].ingredients = {{"steel-plate", 15},{"roboport-antenna-1", 1},{"roboport-chargepad-1", 9}}
data.raw.recipe["bob-robo-charge-port-large-2"].ingredients = {{"bob-robo-charge-port-large", 1},{"steel-plate", 15},{"roboport-antenna-1", 1},{"roboport-chargepad-1", 9}}
data.raw.recipe["bob-robo-charge-port-large-3"].ingredients = {{"bob-robo-charge-port-large-2", 1},{"steel-plate", 15},{"roboport-antenna-2", 1},{"roboport-chargepad-2", 9}}
data.raw.recipe["bob-robo-charge-port-large-4"].ingredients = {{"bob-robo-charge-port-large-3", 1},{"steel-plate", 15},{"roboport-antenna-2", 1},{"roboport-chargepad-2", 9}}


---Trains---

data.raw["locomotive"]["diesel-locomotive-2"].max_speed = 1.4
data.raw["locomotive"]["diesel-locomotive-2"].max_power = "700kW"
data.raw["locomotive"]["diesel-locomotive-2"].friction_force = 0.00125
data.raw["locomotive"]["diesel-locomotive-2"].air_resistance = 0.0015

data.raw["locomotive"]["diesel-locomotive-3"].max_speed = 1.6
data.raw["locomotive"]["diesel-locomotive-3"].max_power = "800kW"
data.raw["locomotive"]["diesel-locomotive-3"].friction_force = 0.001
data.raw["locomotive"]["diesel-locomotive-3"].air_resistance = 0.001

---- Energy ----
--Boilers
data.raw["boiler"]["boiler-2"].fluid_box =
    {
      base_area = 1.5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    }

data.raw.recipe["boiler-3"].ingredients =
    {
      {"boiler-2", 1},
      {"steel-plate", 4},
      {"steel-pipe", 2},
      {"electronic-circuit", 2}
    }
data.raw["boiler"]["boiler-3"].fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    }
    
data.raw.recipe["boiler-4"].ingredients =
    {
      {"boiler-3", 1},
      {"steel-plate", 4},
      {"steel-pipe", 2},
      {"advanced-circuit", 2}
    }
data.raw["boiler"]["boiler-4"].fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    }

--Steam Engines   
data.raw.technology["steam-engine-generator-1"].unit.count = 100     
data.raw.recipe["steam-engine-2"].ingredients =
    {
      {"steam-engine", 1},
      {"steel-plate", 2},
      {"steel-pipe", 5},
      {"iron-gear-wheel", 5},
      {"electronic-circuit", 4}
    }
data.raw["generator"]["steam-engine-2"].fluid_box =
    {
      base_area = 1.5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    }

data.raw.technology["steam-engine-generator-2"].unit.count = 200    
data.raw.recipe["steam-engine-3"].ingredients =
    {
      {"steam-engine-2", 1},
      {"advanced-circuit", 4},
      {"steel-plate", 4},
      {"steel-pipe", 5},
      {"iron-gear-wheel", 5},
    }
data.raw["generator"]["steam-engine-3"].fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    }

--Electric Poles    
data.raw.recipe["medium-electric-pole-2"].ingredients =
    {
      {"medium-electric-pole", 1},
      {"steel-plate", 2},
      {"copper-plate", 4},
    }   

data.raw.recipe["medium-electric-pole-3"].ingredients =
    {
      {"medium-electric-pole-2", 1},
      {"steel-plate", 3},
      {"copper-plate", 6},
    } 
    
data.raw.recipe["medium-electric-pole-4"].ingredients =
    {
      {"medium-electric-pole-3", 1},
      {"steel-plate", 4},
      {"copper-plate", 8},
    } 