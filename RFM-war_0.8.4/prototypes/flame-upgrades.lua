data:extend(
{
  {
    type = "technology",
    name = "nori-flame-damage-1",
    icon = modname.."/graphics/icons/flame-damage.png",
    icon_size = 128,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flame-thrower",
        modifier = "0.1"
      }
    },
    prerequisites = {"tanks"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "e-m-a"
  },
  {
    type = "technology",
    name = "nori-flame-damage-2",
    icon = modname.."/graphics/icons/flame-damage.png",
    icon_size = 128,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flame-thrower",
        modifier = "0.1"
      }
    },
    prerequisites = {"nori-flame-damage-1"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "e-m-b"
  },
  {
    type = "technology",
    name = "nori-flame-damage-3",
    icon = modname.."/graphics/icons/flame-damage.png",
    icon_size = 128,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flame-thrower",
        modifier = "0.2"
      }
    },
    prerequisites = {"nori-flame-damage-2"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-m-c"
  },
  {
    type = "technology",
    name = "nori-flame-damage-4",
    icon = modname.."/graphics/icons/flame-damage.png",
    icon_size = 128,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flame-thrower",
        modifier = "0.2"
      }
    },
    prerequisites = {"nori-flame-damage-3"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-m-d"
  },
  {
    type = "technology",
    name = "nori-flame-damage-5",
    icon = modname.."/graphics/icons/flame-damage.png",
    icon_size = 128,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flame-thrower",
        modifier = "0.2"
      }
    },
    prerequisites = {"nori-flame-damage-4"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "e-m-e"
  },
  {
    type = "technology",
    name = "nori-flame-damage-6",
    icon = modname.."/graphics/icons/flame-damage.png",
    icon_size = 128,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flame-thrower",
        modifier = "0.4"
      }
    },
    prerequisites = {"nori-flame-damage-5"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "e-m-f"
  },
  {
    type = "technology",
    name = "nori-flame-speed-1",
    icon = modname.."/graphics/icons/flame-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "flame-thrower",
        modifier = "0.2"
      }
    },
    prerequisites = {"tanks"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "e-m-g"
  },
  {
    type = "technology",
    name = "nori-flame-speed-2",
    icon = modname.."/graphics/icons/flame-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "flame-thrower",
        modifier = "0.2"
      }
    },
    prerequisites = {"nori-flame-speed-1"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "e-m-h"
  },
  {
    type = "technology",
    name = "nori-flame-speed-3",
    icon = modname.."/graphics/icons/flame-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "flame-thrower",
        modifier = "0.3"
      }
    },
    prerequisites = {"nori-flame-speed-2"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-m-i"
  },
  {
    type = "technology",
    name = "nori-flame-speed-4",
    icon = modname.."/graphics/icons/flame-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "flame-thrower",
        modifier = "0.3"
      }
    },
    prerequisites = {"nori-flame-speed-3"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-m-j"
  },
  {
    type = "technology",
    name = "nori-flame-speed-5",
    icon = modname.."/graphics/icons/flame-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "flame-thrower",
        modifier = "0.3"
      }
    },
    prerequisites = {"nori-flame-speed-4"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "e-m-k"
  },
  {
    type = "technology",
    name = "nori-flame-speed-6",
    icon = modname.."/graphics/icons/flame-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "flame-thrower",
        modifier = "0.3"
      }
    },
    prerequisites = {"nori-flame-speed-5"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "e-m-l"
  }
}
)
