table.insert(data.raw["technology"]["personal-roboport-equipment"].effects,{type="unlock-recipe",recipe="big-personal-roboport-equipment"})
table.insert(data.raw["technology"]["personal-roboport-equipment"].effects,{type="unlock-recipe",recipe="small-personal-roboport-equipment"})

data:extend(
{
  {
    type = "technology",
    name = "adv-personal-roboport-equipment",
    icon = modname.."/graphics/icons/personal-roboport-equipment-tech.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "adv-personal-roboport-equipment"
      },
      {
        type = "unlock-recipe",
        recipe = "adv-small-personal-roboport-equipment"
      },
      {
        type = "unlock-recipe",
        recipe = "adv-big-personal-roboport-equipment"
      },
    },
    prerequisites = { "personal-roboport-equipment"},
    unit = {
      count = 150,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 60
    },
    order = "c-k-d-zz",
  }
})