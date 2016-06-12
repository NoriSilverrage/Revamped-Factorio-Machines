data:extend(
{

  {
    type = "item-subgroup",
    name = "large-ammo",
    group = "combat",
    order = "b1",
  },


  {
    type = "ammo",
    name = "large-basic-bullet-magazine",
    icon = modname.."/graphics/icons/large-basic-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "instant",
              source_effects =
              {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot"
                }
              },
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit"
                },
                {
                  type = "damage",
                  damage = { amount = 3 , type = "physical"}
                }
              }
            }
          }
        }
      }
    },
    magazine_size = 1000,
    subgroup = "large-ammo",
    order = "a-a",
    stack_size = 10
  },
  
  {
    type = "ammo",
    name = "large-piercing-bullet-magazine",
    icon = modname.."/graphics/icons/large-piercing-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-hit"
            },
            {
              type = "damage",
              damage = { amount = 5 , type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 1000,
    subgroup = "large-ammo",
    order = "a-b",
    stack_size = 10
  },
  {
    type = "ammo",
    name = "large-flame-thrower-ammo",
    icon = modname.."/graphics/icons/large-flame-thrower-ammo.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "flame-thrower",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          {
            type = "flame-thrower",
            explosion = "flame-thrower-explosion",
            direction_deviation = 0.07,
            speed_deviation = 0.1,
            starting_frame_deviation = 0.07,
            projectile_starting_speed = 0.5,
            starting_distance = 0.6,
          }
        }
      }
    },
    magazine_size = 10000,
    subgroup = "large-ammo",
    order = "a-c",
    stack_size = 5
  },
  {
    type = "ammo",
    name = "large-rocket",
    icon = modname.."/graphics/icons/large-rocket.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "rocket",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "rocket",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "large-ammo",
    order = "a-d",
    stack_size = 10
  },
  {
    type = "ammo",
    name = "large-explosive-rocket",
    icon = modname.."/graphics/icons/large-explosive-rocket.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "rocket",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "explosive-rocket",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "large-ammo",
    order = "a-e",
    stack_size = 10
  },
  
  
  {
    type = "ammo",
    name = "large-impacting-rocket",
    icon = modname.."/graphics/icons/large-impacting-rocket.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "large-ammo",
    order = "a-f",
    stack_size = 10,
    magazine_size = 100,
    ammo_type =
    {
      category = "rocket",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "impacting-rocket",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },

  },
  
  
  
  
  ---***Recipes***---
  {
    type = "recipe",
    name = "large-basic-bullet-magazine",
    energy_required = 15,
    ingredients = 
    {
        {"steel-plate", 5},
        {"basic-bullet-magazine", 50}
    },
    result = "large-basic-bullet-magazine",
    result_count = 1
  },
  {
    type = "recipe",
    name = "large-piercing-bullet-magazine",
    enabled = nori_test_rfm_war,
    energy_required = 25,
    ingredients =
    {
        {"steel-plate", 5},
        {"piercing-bullet-magazine", 50}
    },
    result = "large-piercing-bullet-magazine"
  },
  
  
  {
    type = "recipe",
    name = "large-flame-thrower-ammo",
    enabled = nori_test_rfm_war,
    energy_required = 25,
    ingredients =
    {
        {"steel-plate", 5},
        {"flame-thrower-ammo", 100}
    },
    result = "large-flame-thrower-ammo"
  },
  
  {
    type = "recipe",
    name = "large-rocket",
    enabled = nori_test_rfm_war,
    energy_required = 50,
    ingredients =
    {
        {"steel-plate", 5},
        {"rocket", 100}
    },
    result = "large-rocket"
  },
  {
    type = "recipe",
    name = "large-explosive-rocket",
    enabled = nori_test_rfm_war,
    energy_required = 50,
    ingredients =
    {
        {"steel-plate", 5},
        {"explosive-rocket", 100}
    },
    result = "large-explosive-rocket"
  },
  
  {
    type = "recipe",
    name = "large-impacting-rocket",
    enabled = nori_test_rfm_war,
    energy_required = 50,
    ingredients =
    {
        {"steel-plate", 5},
        {"impacting-rocket", 25}
    },
    result = "large-impacting-rocket"
  },

})

table.insert(data.raw["technology"]["military-2"].effects,{type="unlock-recipe",recipe="large-basic-bullet-magazine"})
table.insert(data.raw["technology"]["military-2"].effects,{type="unlock-recipe",recipe="large-piercing-bullet-magazine"})
table.insert(data.raw["technology"]["flame-thrower"].effects,{type="unlock-recipe",recipe="large-flame-thrower-ammo"})
table.insert(data.raw["technology"]["rocketry"].effects,{type="unlock-recipe",recipe="large-rocket"})
table.insert(data.raw["technology"]["explosive-rocketry"].effects,{type="unlock-recipe",recipe="large-explosive-rocket"})
table.insert(data.raw["technology"]["rocket-gun-turret"].effects,{type="unlock-recipe",recipe="large-impacting-rocket"})