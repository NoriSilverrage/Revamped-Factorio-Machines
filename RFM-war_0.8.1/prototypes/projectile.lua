--Autocannon Projectile
local cannonproj = table.deepcopy(data.raw["projectile"]["cannon-projectile"])
cannonproj.name = "autocannon-shell"
cannonproj.piercing_damage = 100
cannonproj.action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 45 , type = "physical"} -- Base is 150, DPS of 100
          },
          {
            type = "damage",
            damage = { amount = 12 , type = "impact"} -- Base is 50 DPS of 33
          }
        }
      }
    }
cannonproj.acceleration = 0.1
cannonproj.direction_only = false
cannonproj.collision_box = nil
cannonproj.animation =
    {
      filename = modname.."/graphics/entity/bullet.png",
      tint = {r=1, g=0.46, b=0.27},
      frame_count = 1,
      width = 5,
      height = 75,
      priority = "high"
    }


data:extend({ cannonproj })

--Impacting Rocket
local rocketproj = table.deepcopy(data.raw["projectile"]["rocket"])
rocketproj.name = "impacting-rocket"
rocketproj.action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 40 , type = "physical"} -- Base is 60 explosion, DPS of 60
          },
          {
            type = "damage",
            damage = { amount = 40 , type = "impact"}
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          }
        }
      }
    }
rocketproj.acceleration = 0.025
rocketproj.animation =
    {
      filename = "__base__/graphics/entity/rocket/rocket.png",
      tint = {r=1, g=0.46, b=0.27},
      frame_count = 8,
      line_length = 8,
      width = 9,
      height = 35,
      shift = {0, 0},
      priority = "high"
    },

data:extend({ rocketproj })

--Pew pew
local laserpurple = table.deepcopy(data.raw["projectile"]["laser"])
laserpurple.name = "purple-laser"
laserpurple.animation =
      {
		  filename = modname.."/graphics/entity/laser-purple.png",
		  line_length = 16,
		  tint = {r=1.0, g=0.0, b=1.0},
		  frame_count = 1,
		  width = 12,
		  height = 50,
          priority = "high",
		  blend_mode = "additive"
		}

data:extend({ laserpurple })


local laserblue = table.deepcopy(data.raw["projectile"]["laser"])
laserblue.name = "blue-laser"
laserblue.animation =
      {
		  filename = modname.."/graphics/entity/laser-blue.png",
		  line_length = 16,
		  tint = {r=0.12, g=0.57, b=1.0},
		  frame_count = 1,
		  width = 12,
		  height = 100,
          priority = "high",
		  blend_mode = "additive"
		}

data:extend({ laserblue })