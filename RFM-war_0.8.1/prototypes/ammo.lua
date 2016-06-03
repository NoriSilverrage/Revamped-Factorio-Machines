data:extend(
{
   {
    type = "recipe",
    name = "autocannon-shell",
    energy_required = 32,
    enabled = nori_test_state,
    ingredients =
    {
        {"cannon-shell", 4},
        {"steel-plate", 1}
    },
    result = "autocannon-shell",
    
  },
  
  {
    type = "recipe",
    name = "impacting-rocket",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"rocket", 4},
      {"iron-plate", 1}
    },
    result = "impacting-rocket"
  },
    
  {
    type = "ammo",
    name = "autocannon-shell",
    icon = modname.."/graphics/icons/autocannon-shell.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "ammo",
    order = "d[cannon-shell]-c",
    stack_size = 100,
    --magazine_size = 4,
    ammo_type =
    {
      category = "cannon-shell",
      --target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 4,
        action_delivery =
        {
          type = "projectile",
          projectile = "autocannon-shell",
          starting_speed = 0.1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 30
        }
      }
    },
  },
  
  {
    type = "ammo",
    name = "impacting-rocket",
    icon = modname.."/graphics/icons/impacting-rocket.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "ammo",
    order = "d[rocket-launcher]-c",
    stack_size = 100,
    magazine_size = 4,
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
})