data:extend(
{

    ---***Advanced Roboport***---
    {
        type = "roboport-equipment",
        name = "adv-personal-roboport-equipment",
        take_result = "adv-personal-roboport-equipment",
        sprite =
        {
          filename = modname.."/graphics/equipment/adv-personal-roboport-equipment.png",
          width = 64,
          height = 64,
          priority = "medium"
        },
        shape =
        {
          width = 2,
          height = 2,
          type = "full"
        },
        energy_source =
        {
          type = "electric",
          buffer_capacity = "70MJ", --base of 7MJ (25)
          input_flow_limit = "7000KW", --base of 700KW (3500)
          usage_priority = "secondary-input"
        },
        charging_energy = "1500kW", --base of 200kW (1000)
        energy_consumption = "30kW", -- Base of 4kW (20)

        robot_limit = 15, --base of 10
        construction_radius = 18, --Covers 1600 tiles, base of 15 (covers 900 tiles)
        spawn_and_station_height = 0.4,
        charge_approach_distance = 2.6,

        radius_visualisation_picture =
        {
          filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
          width = 12,
          height = 12
        },
        construction_radius_visualisation_picture =
        {
          filename = "__base__/graphics/entity/roboport/roboport-construction-radius-visualization.png",
          width = 12,
          height = 12
        },

        recharging_animation =
        {
          filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
          priority = "high",
          width = 37,
          height = 35,
          frame_count = 16,
          scale = 1.5,
          animation_speed = 0.5
        },
        recharging_light = {intensity = 0.4, size = 5},
        stationing_offset = {0, -0.6},
        charging_station_shift = {0, 0.5},
        charging_station_count = 3, --base of 2
        charging_distance = 2, --base of 1.6
        charging_threshold_distance = 5
    },
    
    ---***Big Roboports***---
    {
        type = "roboport-equipment",
        name = "big-personal-roboport-equipment",
        take_result = "big-personal-roboport-equipment",
        sprite =
        {
          filename = modname.."/graphics/equipment/big-personal-roboport-equipment.png",
          width = 96,
          height = 96,
          priority = "medium"
        },
        shape =
        {
          width = 3,
          height = 3,
          type = "full"
        },
        energy_source =
        {
          type = "electric",
          buffer_capacity = "65MJ", --base of 7MJ (25)
          input_flow_limit = "8000KW", --base of 700KW (3500)
          usage_priority = "secondary-input"
        },
        charging_energy = "2250kW", --base of 200kW (1000)
        energy_consumption = "30kW", -- Base of 4kW (20)

        robot_limit = 25,
        construction_radius = 24,
        spawn_and_station_height = 0.4,
        charge_approach_distance = 2.6,

        radius_visualisation_picture =
        {
          filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
          width = 12,
          height = 12
        },
        construction_radius_visualisation_picture =
        {
          filename = "__base__/graphics/entity/roboport/roboport-construction-radius-visualization.png",
          width = 12,
          height = 12
        },

        recharging_animation =
        {
          filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
          priority = "high",
          width = 37,
          height = 35,
          frame_count = 16,
          scale = 1.5,
          animation_speed = 0.5
        },
        recharging_light = {intensity = 0.4, size = 5},
        stationing_offset = {0, -0.6},
        charging_station_shift = {0, 0.5},
        charging_station_count = 5,
        charging_distance = 2,
        charging_threshold_distance = 5
    },
    
    
    {
        type = "roboport-equipment",
        name = "adv-big-personal-roboport-equipment",
        take_result = "adv-big-personal-roboport-equipment",
        sprite =
        {
          filename = modname.."/graphics/equipment/adv-big-personal-roboport-equipment.png",
          width = 96,
          height = 96,
          priority = "medium"
        },
        shape =
        {
          width = 3,
          height = 3,
          type = "full"
        },
        energy_source =
        {
          type = "electric",
          buffer_capacity = "96MJ", --base of 7MJ (25)
          input_flow_limit = "1200KW", --base of 700KW (3500)
          usage_priority = "secondary-input"
        },
        charging_energy = "3375kW", --base of 200kW (1000)
        energy_consumption = "60kW", -- Base of 4kW (20)

        robot_limit = 35,
        construction_radius = 30,
        spawn_and_station_height = 0.4,
        charge_approach_distance = 2.6,

        radius_visualisation_picture =
        {
          filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
          width = 12,
          height = 12
        },
        construction_radius_visualisation_picture =
        {
          filename = "__base__/graphics/entity/roboport/roboport-construction-radius-visualization.png",
          width = 12,
          height = 12
        },

        recharging_animation =
        {
          filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
          priority = "high",
          width = 37,
          height = 35,
          frame_count = 16,
          scale = 1.5,
          animation_speed = 0.5
        },
        recharging_light = {intensity = 0.4, size = 5},
        stationing_offset = {0, -0.6},
        charging_station_shift = {0, 0.5},
        charging_station_count = 7,
        charging_distance = 2,
        charging_threshold_distance = 5
    },
    
    ---***Small Roboports***---
    {
        type = "roboport-equipment",
        name = "small-personal-roboport-equipment",
        take_result = "small-personal-roboport-equipment",
        sprite =
        {
          filename = modname.."/graphics/equipment/small-personal-roboport-equipment.png",
          width = 32,
          height = 32,
          priority = "medium"
        },
        shape =
        {
          width = 1,
          height = 1,
          type = "full"
        },
        energy_source =
        {
          type = "electric",
          buffer_capacity = "7.5MJ", --base of 7MJ (25)
          input_flow_limit = "1000KW", --base of 700KW (3500)
          usage_priority = "secondary-input"
        },
        charging_energy = "250kW", --base of 200kW (1000)
        energy_consumption = "5kW", -- Base of 4kW (20)

        robot_limit = 3,
        construction_radius = 7.5,
        spawn_and_station_height = 0.4,
        charge_approach_distance = 2.6,

        radius_visualisation_picture =
        {
          filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
          width = 12,
          height = 12
        },
        construction_radius_visualisation_picture =
        {
          filename = "__base__/graphics/entity/roboport/roboport-construction-radius-visualization.png",
          width = 12,
          height = 12
        },

        recharging_animation =
        {
          filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
          priority = "high",
          width = 37,
          height = 35,
          frame_count = 16,
          scale = 1.5,
          animation_speed = 0.5
        },
        recharging_light = {intensity = 0.4, size = 5},
        stationing_offset = {0, -0.6},
        charging_station_shift = {0, 0.5},
        charging_station_count = 1,
        charging_distance = 1.6,
        charging_threshold_distance = 5
    },
    
    
    {
        type = "roboport-equipment",
        name = "adv-small-personal-roboport-equipment",
        take_result = "adv-small-personal-roboport-equipment",
        sprite =
        {
          filename = modname.."/graphics/equipment/adv-small-personal-roboport-equipment.png",
          width = 32,
          height = 32,
          priority = "medium"
        },
        shape =
        {
          width = 1,
          height = 1,
          type = "full"
        },
        energy_source =
        {
          type = "electric",
          buffer_capacity = "11MJ", --base of 7MJ (25)
          input_flow_limit = "1500KW", --base of 700KW (3500)
          usage_priority = "secondary-input"
        },
        charging_energy = "375kW", --base of 200kW (1000)
        energy_consumption = "7.5kW", -- Base of 4kW (20)

        robot_limit = 5,
        construction_radius = 10,
        spawn_and_station_height = 0.4,
        charge_approach_distance = 2.6,

        radius_visualisation_picture =
        {
          filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
          width = 12,
          height = 12
        },
        construction_radius_visualisation_picture =
        {
          filename = "__base__/graphics/entity/roboport/roboport-construction-radius-visualization.png",
          width = 12,
          height = 12
        },

        recharging_animation =
        {
          filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
          priority = "high",
          width = 37,
          height = 35,
          frame_count = 16,
          scale = 1.5,
          animation_speed = 0.5
        },
        recharging_light = {intensity = 0.4, size = 5},
        stationing_offset = {0, -0.6},
        charging_station_shift = {0, 0.5},
        charging_station_count = 1,
        charging_distance = 1.6,
        charging_threshold_distance = 5
    },
  
}
)