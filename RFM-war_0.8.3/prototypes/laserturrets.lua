data.raw["electric-turret"]["laser-turret"].fast_replaceable_group = "turret"

local defaultcolor = {r=0.5, g=0.5, b=0.5}

--Advanced Turret
local green = {r=0.808, g=0.957, b=0.549}
local lightgreen = {r=0.949, g=0.992, b=0.867}
local darkgreen = {r=0.737, g=0.929, b=0.408}

--Sniper Turret
local red = {r=0.93, g=0, b=0}
local lightred = {r=1, g=0.36, b=0.36}
local darkred = {r=0.74, g=0, b=0}

--Heavy Turret
local yellow = {r=1, g=0.9, b=0.34}
local lightyellow = {r=1, g=1, b=0.34}
local darkyellow = {r=1, g=0.82, b=0.35}

--Rocket Turret
local blue = {r=0.04, g=0.271, b=0.878}
local lightblue = {r=0, g=0.675, b=0.863}
local darkblue = {r=0.04, g=0.2, b=0.65}

function nori_laser_turret_extension(inputs)
return
{
  layers =
  {
    laser_turret_extension(inputs),
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-start-mask.png",
      frame_count = inputs.frame_count and inputs.frame_count or 15,
      line_length = inputs.line_length and inputs.line_length or 0,
      width = 51,
      height = 47,
      direction_count = 4,
      axially_symmetrical = false,
      shift = {0.078125, -1.26563},
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
      tint = inputs.tint and inputs.tint or defaultcolor,
    },
    laser_turret_extension_shadow(inputs)
  }
}
end

function nori_laser_turret_attack(inputs)
return
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-gun.png",
      line_length = 8,
      width = 68,
      height = 68,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0.0625, -1}
    },
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-mask.png",
      line_length = 8,
      width = 54,
      height = 44,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0.0625, -1.3125},
      tint = inputs.tint and inputs.tint or defaultcolor,
    },
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-shadow.png",
      line_length = 8,
      width = 88,
      height = 52,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 64,
      draw_as_shadow = true,
      shift = {1.59375, 0}
    }
  }
}
end

function nori_laser_turret_base(inputs)
return
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
      priority = "high",
      width = 98,
      height = 82,
      axially_symmetrical = false,
      direction_count = 1,
      shift = { 0.109375, 0.03125 },
      tint = inputs.base and inputs.base or defaultcolor,
    },
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-base-mask.png",
      line_length = 1,
      width = 54,
      height = 46,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0.046875, -0.109375},
      tint = inputs.mask and inputs.mask or defaultcolor,
    }
  }
}
end

data:extend({ 
 {
    type = "item",
    name = "adv-laser-turret",
    icon = modname.."/graphics/icons/adv-laser-turret.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "b[turret]-b[laser-turret]-b",
    place_result = "adv-laser-turret",
    enable = nori_test_rfm_war,
    stack_size = 50
  },
  
   {
    type = "item",
    name = "sniper-laser-turret",
    icon = modname.."/graphics/icons/sniper-laser-turret.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "b[turret]-b[laser-turret]-c",
    place_result = "sniper-laser-turret",
    enable = nori_test_rfm_war,
    stack_size = 50
  },
    
    
  {
    type = "recipe",
    name = "adv-laser-turret",
    energy_required = 20,
    enable = nori_test_rfm_war,
    ingredients =
    {
        {"battery", 20},
        {"advanced-circuit", 10},
        {"steel-plate", 10},
        {"laser-turret", 1}
    },
    result = "adv-laser-turret",

  },

  {
    type = "recipe",
    name = "sniper-laser-turret",
    energy_required = 30,
    enable = nori_test_rfm_war,
    ingredients =
    {
        {"battery", 30},
        {"advanced-circuit", 10},
        {"steel-plate", 5},
        {"laser-turret", 2}
    },
    result = "sniper-laser-turret",

  },
})

local advlaserturret = table.deepcopy(data.raw["electric-turret"]["laser-turret"])
advlaserturret.name = "adv-laser-turret"
advlaserturret.max_health = 1200
advlaserturret.folded_animation = nori_laser_turret_extension{frame_count=1, line_length = 1, tint = lightyellow}
advlaserturret.preparing_animation = nori_laser_turret_extension{type = "gun", tint = lightyellow}
advlaserturret.folding_animation = nori_laser_turret_extension{run_mode = "backward",tint = lightyellow}
advlaserturret.prepared_animation = nori_laser_turret_attack{tint = lightyellow}
advlaserturret.base_picture = nori_laser_turret_base{base = darkyellow, mask = yellow}
advlaserturret.minable.result = "adv-laser-turret"
advlaserturret.energy_source =
    {
      type = "electric",
      buffer_capacity = "4801kJ",
      input_flow_limit = "12000kW",
      drain = "36kW",
      usage_priority = "primary-input"
    }
advlaserturret.attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 20,
      projectile_center = {0, -0.2},
      projectile_creation_distance = 1.4,
      range = 25,
      damage_modifier = 8,
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "1200kJ",
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "purple-laser",
                starting_speed = 0.28
              }
            }
          }
        }
      },
      sound = make_laser_sounds()
    }    
advlaserturret.resistances =
    {
      {
        type = "physical",
        percent = 35
      },
      {
        type = "acid",
        percent = 25
      },
      {
        type = "poison",
        percent = 35
      },
      {
        type = "explosion",
        percent = 90
      },
      {
        type = "impact",
        percent = 35
      }
    }    


data:extend({ advlaserturret })

local sniperlaserturret = table.deepcopy(data.raw["electric-turret"]["laser-turret"])
sniperlaserturret.name = "sniper-laser-turret"
sniperlaserturret.max_health = 1000
sniperlaserturret.folded_animation = nori_laser_turret_extension{frame_count=1, line_length = 1, tint = lightred}
sniperlaserturret.preparing_animation = nori_laser_turret_extension{type = "gun", tint = lightred}
sniperlaserturret.folding_animation = nori_laser_turret_extension{run_mode = "backward",tint = lightred}
sniperlaserturret.prepared_animation = nori_laser_turret_attack{tint = lightred}
sniperlaserturret.base_picture = nori_laser_turret_base{base = darkred, mask = red}
sniperlaserturret.minable.result = "sniper-laser-turret"
sniperlaserturret.energy_source =
    {
      type = "electric",
      buffer_capacity = "12801kJ",
      input_flow_limit = "25600kW",
      drain = "48kW",
      usage_priority = "primary-input"
    }
sniperlaserturret.attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 150,
      projectile_center = {0, -0.2},
      projectile_creation_distance = 1.4,
      range = 50,
      damage_modifier = 45,
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "6400kJ",
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "blue-laser",
                starting_speed = 0.5
              }
            }
          }
        }
      },
      sound = make_laser_sounds()
    }    
sniperlaserturret.resistances =
    {
      {
        type = "physical",
        percent = 25
      },
      {
        type = "acid",
        percent = 25
      },
      {
        type = "poison",
        percent = 35
      },
      {
        type = "impact",
        percent = 50
      }
    }    
data:extend({ sniperlaserturret })



data:extend({
  {
    type = "technology",
    name = "adv-laser-turrets",
    icon = modname.."/graphics/icons/laser-turret-tech.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "adv-laser-turret"
      },
      {
        type = "unlock-recipe",
        recipe = "sniper-laser-turret"
      },
    },
    prerequisites = {"military-3","laser-turrets"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 2},
        {"alien-science-pack", 1},
      },
      time = 45
    }
  }  
})    