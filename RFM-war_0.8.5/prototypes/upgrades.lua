data:extend(
{

    ---***Bullet Upgrades***---
  {
    type = "technology",
    name = "nori-bullet-damage-7",
    icon = "__base__/graphics/technology/bullet-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = "0.4"
      }
    },
    prerequisites = {"bullet-damage-6"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 120
    },
    upgrade = true,
    order = "e-l-f"
  },

  {
    type = "technology",
    name = "nori-bullet-speed-7",
    icon = "__base__/graphics/technology/bullet-speed.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = "0.3"
      }
    },
    prerequisites = {"bullet-speed-6"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 120
    },
    upgrade = true,
    order = "e-l-l"
  },
  
  
  ---***Shotgun Upgrades***---
  
    {
    type = "technology",
    name = "nori-shotgun-shell-damage-7",
    icon = "__base__/graphics/technology/shotgun-shell-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = "0.4"
      }
    },
    prerequisites = {"shotgun-shell-damage-6"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 120
    },
    upgrade = true,
    order = "e-n-f"
  },
  
  {
    type = "technology",
    name = "nori-shotgun-shell-speed-7",
    icon = "__base__/graphics/technology/shotgun-shell-speed.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = "0.3"
      }
    },
    prerequisites = {"shotgun-shell-speed-6"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 120
    },
    upgrade = true,
    order = "e-n-l"
  },
  
  ---***Rocket Upgrades***---
  {
    type = "technology",
    name = "nori-rocket-damage-6",
    icon = "__base__/graphics/technology/rocket-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "rocket",
        modifier = "0.4"
      }
    },
    prerequisites = {"rocket-damage-5"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-j-e"
  },
  {
    type = "technology",
    name = "nori-rocket-damage-7",
    icon = "__base__/graphics/technology/rocket-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "rocket",
        modifier = "0.4"
      }
    },
    prerequisites = {"nori-rocket-damage-6"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 120
    },
    upgrade = true,
    order = "e-j-e"
  },
  
  {
    type = "technology",
    name = "nori-rocket-speed-6",
    icon = "__base__/graphics/technology/rocket-speed.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = "0.3"
      }
    },
    prerequisites = {"rocket-speed-5"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-j-j"
  },
  {
    type = "technology",
    name = "rocket-speed-7",
    icon = "__base__/graphics/technology/rocket-speed.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = "0.3"
      }
    },
    prerequisites = {"nori-rocket-speed-6"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 120
    },
    upgrade = true,
    order = "e-j-j"
  },
  
  ---***Robot Upgrade***---
  {
    type = "technology",
    name = "nori-combat-robot-damage-6",
    icon = "__base__/graphics/technology/combat-robot-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "combat-robot-laser",
        modifier = "0.3"
      },
      {
        type = "ammo-damage",
        ammo_category = "combat-robot-beam",
        modifier = "0.3"
      }
    },
    prerequisites = {"combat-robot-damage-5"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "e-p-g"
  },
  
  
  ---***Laser Turret Upgrades***---
   {
    type = "technology",
    name = "nori-laser-turret-damage-7",
    icon = "__base__/graphics/technology/laser-turret-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser-turret",
        modifier = "0.4"
      }
    },
    prerequisites = {"laser-turret-damage-6"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 120
    },
    upgrade = true,
    order = "e-n-f"
  },
  {
    type = "technology",
    name = "nori-laser-turret-speed-7",
    icon = "__base__/graphics/technology/laser-turret-speed.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser-turret",
        modifier = "0.3"
      }
    },
    prerequisites = {"laser-turret-speed-6"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 120
    },
    upgrade = true,
    order = "e-n-l"
  },
  
}
)
