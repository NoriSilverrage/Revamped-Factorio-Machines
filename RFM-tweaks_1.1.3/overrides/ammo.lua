data.raw.ammo["firearm-magazine"].ammo_type.action[1].action_delivery[1].target_effects = {{type = "damage", damage = { amount = 3 , type = "physical"}}}
data.raw.ammo["firearm-magazine"].magazine_size = 20
data.raw.ammo["piercing-rounds-magazine"].magazine_size = 20

data.raw.projectile["cannon-projectile"].collision_box = {{-5, -1.1}, {5, 1.1}}
data.raw.projectile["cannon-projectile"].piercing_damage = 1000
data.raw.projectile["cannon-projectile"].action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 400 , type = "physical"}
          },
          {
            type = "damage",
            damage = { amount = 100 , type = "explosion"}
          }
        }
      }
    }
data.raw.projectile["explosive-cannon-projectile"].piercing_damage = 200
data.raw.projectile["explosive-cannon-projectile"].action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 100, type = "physical"}
          }
        }
      }
    }
data.raw.projectile["explosive-cannon-projectile"].final_action.action_delivery.target_effects =
        {
          {
            type = "create-entity",
            entity_name = "big-explosion",
            check_buildability = true
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 2,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 300, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  }
                }
              }
            }
          }
        }
data.raw["land-mine"]["land-mine"].action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
          {
            type = "nested-result",
            affects_target = true,
            action =
            {
              type = "area",
              perimeter = 6,
              collision_mask = { "player-layer" },
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  type = "damage",
                  damage = { amount = 450, type = "physical"}
                }
              }
            },
          },
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = { amount = 1000, type = "physical"}
          }
        }
      }
    }
data.raw.projectile["rocket"].acceleration = 0.025
data.raw.projectile["rocket"].action.action_delivery.target_effects =
        {
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = {amount = 75, type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          }
        }
data.raw.projectile["explosive-rocket"].acceleration = 0.015
data.raw.projectile["explosive-rocket"].action.action_delivery.target_effects =
        {
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 12,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 45, type = "physical"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  }
                }
              }
            },
          }
        }