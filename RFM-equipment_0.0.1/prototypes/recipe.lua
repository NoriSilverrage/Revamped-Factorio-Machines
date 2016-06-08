data:extend(
{
  {
    type = "recipe",
    name = "adv-personal-roboport-equipment",
    enabled = nori_test_rfm_equip,
    energy_required = 20,
    ingredients =
    {
      {"personal-roboport-equipment", 2},
      {"processing-unit", 10},
      {"steel-plate", 20},
      {"battery", 20},
    },
    result = "adv-personal-roboport-equipment"
  },
  {
    type = "recipe",
    name = "big-personal-roboport-equipment",
    enabled = nori_test_rfm_equip,
    energy_required = 30,
    ingredients =
    {
      {"personal-roboport-equipment", 2},
      {"processing-unit", 5},
      {"steel-plate", 5},
      {"battery", 10},
    },
    result = "big-personal-roboport-equipment"
  },
  {
    type = "recipe",
    name = "small-personal-roboport-equipment",
    enabled = nori_test_rfm_equip,
    energy_required = 10,
    ingredients =
    {
      {"processing-unit", 4},
      {"iron-gear-wheel", 10},
      {"steel-plate", 5},
      {"battery", 12},
    },
    result = "small-personal-roboport-equipment"
  },
})