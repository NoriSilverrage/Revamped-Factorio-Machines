data.raw["ammo-turret"]["gun-turret"].fast_replaceable_group = "turret"

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


function nori_gun_turret_extension(inputs)
return
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-extension.png",
      priority = "medium",
      width = 65,
      height = 63,
      direction_count = 4,
      frame_count = inputs.frame_count and inputs.frame_count or 5,
      line_length = inputs.line_length and inputs.line_length or 0,
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
      shift = {0.078125, -0.859375},
      axially_symmetrical = false
    },
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-extension-mask.png",
      frame_count = inputs.frame_count and inputs.frame_count or 5,
      line_length = inputs.line_length and inputs.line_length or 0,
      width = 24,
      height = 31,
      direction_count = 4,
      axially_symmetrical = false,
      shift = {0.0625, -0.890625},
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
      tint = inputs.tint and inputs.tint or defaultcolor,
    },
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-extension-shadow.png",
      width = 89,
      height = 49,
      direction_count = 4,
      frame_count = inputs.frame_count and inputs.frame_count or 5,
      line_length = inputs.line_length and inputs.line_length or 0,
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
      shift = {1.26563, 0.015625},
      axially_symmetrical = false,
      draw_as_shadow = true
    }
  }
}
end

function nori_gun_turret_attack(inputs)
return
{
  layers =
  {
    {
      width = 66,
      height = 64,
      frame_count = inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0.0625, -0.875},
      stripes =
      {
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-1.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        },
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-2.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        }
      }
    },
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-mask.png",
      line_length = inputs.frame_count and inputs.frame_count or 2,
      width = 29,
      height = 27,
      frame_count = inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0.078125, -1.01563},
      tint = inputs.tint and inputs.tint or defaultcolor,

    },
    {
      width = 91,
      height = 50,
      frame_count = inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {1.29688, 0},
      draw_as_shadow = true,
      stripes =
      {
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-shadow-1.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        },
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-shadow-2.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        }
      }
    }
  }
}
end

function nori_gun_turret_base(inputs)
return
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
      priority = "high",
      width = 90,
      height = 75,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0.0625, -0.046875},
      tint = inputs.base and inputs.base or defaultcolor,
    },
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
      line_length = 1,
      width = 52,
      height = 47,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0.0625, -0.234375},
      tint = inputs.mask and inputs.mask or defaultcolor,
    }
  }
}
end



data:extend({ 
 {
    type = "item",
    name = "adv-ammo-turret",
    icon = modname.."/graphics/icons/adv-gun-turret.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "b[turret]-a[gun-turret]-b",
    place_result = "adv-ammo-turret",
    enable = nori_test_rfm_war,
    stack_size = 50
  },
  
   {
    type = "item",
    name = "sniper-ammo-turret",
    icon = modname.."/graphics/icons/sniper-gun-turret.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "b[turret]-a[gun-turret]-c",
    place_result = "sniper-ammo-turret",
    enable = nori_test_rfm_war,
    stack_size = 50
  },
    
   {
    type = "item",
    name = "ac-ammo-turret",
    icon = modname.."/graphics/icons/ac-gun-turret.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "b[turret]-a[gun-turret]-d",
    place_result = "ac-ammo-turret",
    enable = nori_test_rfm_war,
    stack_size = 50
  },
  
  {
    type = "item",
    name = "rocket-ammo-turret",
    icon = modname.."/graphics/icons/rocket-gun-turret.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "b[turret]-a[gun-turret]-e",
    place_result = "rocket-ammo-turret",
    enable = nori_test_rfm_war,
    stack_size = 50
  },

  {
    type = "recipe",
    name = "adv-ammo-turret",
    energy_required = 20,
    enabled = nori_test_rfm_war,
    ingredients =
    {
        {"iron-gear-wheel", 10},
        {"electronic-circuit", 10},
        {"steel-plate", 10},
        {"gun-turret", 1}
    },
    result = "adv-ammo-turret",

  },

  {
    type = "recipe",
    name = "sniper-ammo-turret",
    energy_required = 30,
    enabled = nori_test_rfm_war,
    ingredients =
    {
        {"iron-gear-wheel", 10},
        {"advanced-circuit", 10},
        {"steel-plate", 10},
        {"gun-turret", 2}
    },
    result = "sniper-ammo-turret",

  },
  
  {
    type = "recipe",
    name = "ac-ammo-turret",
    energy_required = 20,
    enabled = nori_test_rfm_war,
    ingredients =
    {
        {"iron-gear-wheel", 10},
        {"advanced-circuit", 10},
        {"steel-plate", 10},
        {"gun-turret", 1}
    },
    result = "ac-ammo-turret",

  },

  {
    type = "recipe",
    name = "rocket-ammo-turret",
    energy_required = 20,
    enabled = nori_test_rfm_war,
    ingredients =
    {
        {"rocket-launcher", 1},
        {"electronic-circuit", 10},
        {"iron-plate", 10},
        {"gun-turret", 1}
    },
    result = "rocket-ammo-turret",

  },
  
  
})



--** Ammo Turret Mk2 **--

local ammoturret2 = table.deepcopy(data.raw["ammo-turret"]["gun-turret"])
ammoturret2.name = "adv-ammo-turret"
ammoturret2.folded_animation = nori_gun_turret_extension{frame_count=1, line_length = 1, type = "gun", tint = lightgreen}
ammoturret2.preparing_animation = nori_gun_turret_extension{type = "gun", tint = lightgreen}
ammoturret2.folding_animation = nori_gun_turret_extension{run_mode = "backward", type = "gun", tint = lightgreen}
ammoturret2.prepared_animation = nori_gun_turret_attack{frame_count=1, type = "gun", tint = lightgreen}
ammoturret2.attacking_animation = nori_gun_turret_attack{type = "gun", tint = lightgreen}
ammoturret2.base_picture = nori_gun_turret_base{type = "gun", base = darkgreen, mask = green}
ammoturret2.max_health = 800
ammoturret2.attack_parameters.range = 22
ammoturret2.attack_parameters.damage_modifier = 3
ammoturret2.inventory_size = 2
ammoturret2.automated_ammo_count = 20
ammoturret2.minable.result = "adv-ammo-turret"
ammoturret2.fast_replaceable_group = "turret"
ammoturret2.resistances =
    {
      {
        type = "physical",
        percent = 30
      },
      {
        type = "acid",
        percent = 35
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
data:extend({ ammoturret2 })


--** Ammo Sniper Turret **--

local sniperammoturret = table.deepcopy(data.raw["ammo-turret"]["gun-turret"])
sniperammoturret.name = "sniper-ammo-turret"
sniperammoturret.folded_animation = nori_gun_turret_extension{frame_count=1, line_length = 1, type = "gun", tint = lightred}
sniperammoturret.preparing_animation = nori_gun_turret_extension{type = "gun", tint = lightred}
sniperammoturret.folding_animation = nori_gun_turret_extension{run_mode = "backward", type = "gun", tint = lightred}
sniperammoturret.prepared_animation = nori_gun_turret_attack{frame_count=1, type = "gun", tint = lightred}
sniperammoturret.attacking_animation = nori_gun_turret_attack{type = "gun", tint = lightred}
sniperammoturret.base_picture = nori_gun_turret_base{type = "gun", base = darkred, mask = red}
sniperammoturret.max_health = 600
sniperammoturret.attack_parameters.range = 45
sniperammoturret.attack_parameters.damage_modifier = 36
sniperammoturret.attack_parameters.cooldown = 120
sniperammoturret.inventory_size = 1
sniperammoturret.automated_ammo_count = 10
sniperammoturret.attacking_speed = 2
sniperammoturret.minable.result = "sniper-ammo-turret"
sniperammoturret.fast_replaceable_group = "turret"
sniperammoturret.resistances =
    {
      {
        type = "physical",
        percent = 20
      },
      {
        type = "acid",
        percent = 25
      },
      {
        type = "poison",
        percent = 25
      },
      {
        type = "impact",
        percent = 35
      }
    }
data:extend({ sniperammoturret })


--** Ammo Heavy Turret **--

local acammoturret = table.deepcopy(data.raw["ammo-turret"]["gun-turret"])
acammoturret.name = "ac-ammo-turret"
acammoturret.folded_animation = nori_gun_turret_extension{frame_count=1, line_length = 1, type = "gun", tint = lightyellow}
acammoturret.preparing_animation = nori_gun_turret_extension{type = "gun", tint = lightyellow}
acammoturret.folding_animation = nori_gun_turret_extension{run_mode = "backward", type = "gun", tint = lightyellow}
acammoturret.prepared_animation = nori_gun_turret_attack{frame_count=1, type = "gun", tint = lightyellow}
acammoturret.attacking_animation = nori_gun_turret_attack{type = "gun", tint = lightyellow}
acammoturret.base_picture = nori_gun_turret_base{type = "gun", base = darkyellow, mask = yellow}
acammoturret.max_health = 1200
acammoturret.attack_parameters =
    {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 100,
      damage_modifier = 1.5,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 30,
      sound =
      {
        {
          filename = modname.."/sound/auto-cannon.ogg",
          volume = 1.0
        }
      },
    }
acammoturret.inventory_size = 1
acammoturret.automated_ammo_count = 10
acammoturret.attacking_speed = 10
acammoturret.minable.result = "ac-ammo-turret"
acammoturret.fast_replaceable_group = "turret"
acammoturret.resistances =
    {
      {
        type = "physical",
        percent = 50
      },
      {
        type = "acid",
        percent = 25
      },
      {
        type = "poison",
        percent = 25
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
data:extend({ acammoturret })



--** Ammo Rocket Turret **--

local rocketammoturret = table.deepcopy(data.raw["ammo-turret"]["gun-turret"])
rocketammoturret.name = "rocket-ammo-turret"
rocketammoturret.folded_animation = nori_gun_turret_extension{frame_count=1, line_length = 1, type = "gun", tint = lightblue}
rocketammoturret.preparing_animation = nori_gun_turret_extension{type = "gun", tint = lightblue}
rocketammoturret.folding_animation = nori_gun_turret_extension{run_mode = "backward", type = "gun", tint = lightblue}
rocketammoturret.prepared_animation = nori_gun_turret_attack{frame_count=1, type = "gun", tint = lightblue}
rocketammoturret.attacking_animation = nori_gun_turret_attack{type = "gun", tint = lightblue}
rocketammoturret.base_picture = nori_gun_turret_base{type = "gun", base = darkblue, mask = blue}
rocketammoturret.max_health = 1000
rocketammoturret.attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      movement_slow_down_factor = 0,
      cooldown = 40,
      damage_modifier = 1.5,      
      projectile_creation_distance = 0.6,
      range = 25,
      projectile_center = {-0.17, 0},
      sound =
      {
        {
          filename = "__base__/sound/fight/rocket-launcher.ogg",
          volume = 0.7
        }
      }
    }
rocketammoturret.inventory_size = 1
rocketammoturret.automated_ammo_count = 10
rocketammoturret.attacking_speed = 10
rocketammoturret.minable.result = "rocket-ammo-turret"
rocketammoturret.fast_replaceable_group = "turret"
rocketammoturret.resistances =
    {
      {
        type = "physical",
        percent = 50
      },
      {
        type = "acid",
        percent = 25
      },
      {
        type = "poison",
        percent = 25
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
data:extend({ rocketammoturret })


data:extend({
  {
    type = "technology",
    name = "ac-gun-turret",
    icon_size = 128,
    icon = modname.."/graphics/icons/ac-turret-tech.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ac-ammo-turret"
      },
      {
        type = "unlock-recipe",
        recipe = "autocannon-shell"
      },
    },
    prerequisites = {"military-3","tanks","turrets"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 2},
        {"alien-science-pack", 1},
      },
      time = 45
    }
  },
  {
    type = "technology",
    name = "adv-gun-turret",
    icon_size = 128,
    icon = modname.."/graphics/icons/adv-turret-tech.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "adv-ammo-turret"
      },
      {
        type = "unlock-recipe",
        recipe = "sniper-ammo-turret"
      },
    },
    prerequisites = {"military-3","turrets"},
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
  },
  {
    type = "technology",
    name = "rocket-gun-turret",
    icon_size = 128,
    icon = modname.."/graphics/icons/rocket-turret-tech.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rocket-ammo-turret"
      },
      {
        type = "unlock-recipe",
        recipe = "impacting-rocket"
      },
    },
    prerequisites = {"military-3","rocketry","turrets"},
    unit =
    {
      count = 100,
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