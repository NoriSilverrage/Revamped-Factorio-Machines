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
    
data.raw["electric-turret"]["laser-turret"].energy_source =
    {
      type = "electric",
      buffer_capacity = "14000kJ",
      input_flow_limit = "4800kW",
      drain = "24kW",
      usage_priority = "primary-input"
    }