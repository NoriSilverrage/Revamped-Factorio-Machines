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
  }
})