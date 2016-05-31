data:extend(
{
   {
    type = "recipe",
    name = "cannon-shot-shell",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
        {"cannon-shell", 1},
        --{"electronic-circuit", 10},
        --{"steel-plate", 10},
        --{"gun-turret", 1}
    },
    result = "cannon-shot-shell",
    
  },
    
  {
    type = "ammo",
    name = "cannon-shot-shell",
    icon = "__base__/graphics/icons/cannon-shell.png",
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
          projectile = "cannon-shot-projectile",
          starting_speed = 0.1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 30
        }
      }
    },
  }
})