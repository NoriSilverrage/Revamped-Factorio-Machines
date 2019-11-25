if mods["Krastorio"] then

  data.raw["underground-belt"]["fast-underground-belt"].max_distance = 7
  data.raw["underground-belt"]["express-underground-belt"].max_distance = 9
  data.raw["pipe-to-ground"]["pipe-to-ground"].fluid_box =
  {
  	base_area = 1,
  	pipe_covers = pipecoverspictures(),
  	pipe_connections =
  	{
  		{ position = {0, -1} },
  		{
  			position = {0, 1},
  			max_underground_distance = 10
  		}
  	}
  }

end
