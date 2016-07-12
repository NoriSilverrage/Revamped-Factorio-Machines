data.raw["underground-belt"]["fast-underground-belt"].max_distance = 7
data.raw["underground-belt"]["express-underground-belt"].max_distance = 10

data:extend({ 
  {
    type = "recipe",
    name = "fast-transport-belt-mr",
    energy_required = 3,
    enabled = "false",
    ingredients =
    {
      {"fast-underground-belt", 6}
    },
    result = "fast-transport-belt-mr",
    result_count = 2
  },
  
  {
    type = "recipe",
    name = "express-transport-belt-mr",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"express-underground-belt", 4}
    },
    result = "express-transport-belt-mr",
    result_count = 2
  },
  
  {
    type = "recipe",
    name = "fast-transport-belt-lr",
    energy_required = 7,
    enabled = "false",
    ingredients =
    {
      {"fast-underground-belt", 14}
    },
    result = "fast-transport-belt-lr",
    result_count = 2
  },
  
  {
    type = "recipe",
    name = "express-transport-belt-lr",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {"express-underground-belt", 10}
    },
    result = "express-transport-belt-lr",
    result_count = 2
    
  }
  
})