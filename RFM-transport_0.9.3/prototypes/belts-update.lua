data.raw["underground-belt"]["fast-underground-belt"].max_distance = 7
data.raw["underground-belt"]["express-underground-belt"].max_distance = 10

data:extend({ 
  {
    type = "recipe",
    name = "fast-underground-belt-mr",
    energy_required = 3,
    enabled = "false",
    ingredients =
    {
      {"fast-underground-belt", 6}
    },
    result = "fast-underground-belt-mr",
    result_count = 2
  },
  
  {
    type = "recipe",
    name = "express-underground-belt-mr",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"express-underground-belt", 4}
    },
    result = "express-underground-belt-mr",
    result_count = 2
  },
  
  {
    type = "recipe",
    name = "fast-underground-belt-lr",
    energy_required = 7,
    enabled = "false",
    ingredients =
    {
      {"fast-underground-belt", 14}
    },
    result = "fast-underground-belt-lr",
    result_count = 2
  },
  
  {
    type = "recipe",
    name = "express-underground-belt-lr",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {"express-underground-belt", 10}
    },
    result = "express-underground-belt-lr",
    result_count = 2
    
  }
  
})