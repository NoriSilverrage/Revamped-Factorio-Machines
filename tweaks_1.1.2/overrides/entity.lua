data.raw.player["player"].running_speed = 0.15*1.15
data.raw["player"]["player"].inventory_size = 120

data.raw["transport-belt-to-ground"]["basic-transport-belt-to-ground"].max_distance = 5
data.raw["transport-belt-to-ground"]["fast-transport-belt-to-ground"].max_distance = 7
data.raw["transport-belt-to-ground"]["express-transport-belt-to-ground"].max_distance = 10

data.raw["ammo-turret"]["gun-turret"].max_health = 600
data.raw["ammo-turret"]["gun-turret"].attack_parameters.range = 19
data.raw["ammo-turret"]["gun-turret"].resistances =
    {
      {
        type = "physical",
        percent = 20
      },
      {
        type = "acid",
        percent = 20
      },
      {
        type = "poison",
        percent = 20
      },
    }
data.raw.car["tank"].guns = { "tank-cannon", "tank-cannon", "tank-machine-gun" }
data.raw.car["tank"].resistances =
    {
      {
        type = "physical",
        decrease = 15,
        percent = 75
      },
      {
        type = "impact",
        decrease = 50,
        percent = 50
      },
      {
        type = "acid",
        decrease = 10,
        percent = 70
      }
    }