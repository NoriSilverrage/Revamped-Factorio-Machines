
----** Modules **----

--Productivity
data.raw.module["productivity-module"].effect = { productivity = {bonus = 0.03}, consumption = {bonus = 0.25}, pollution = {bonus = 0.0375}, speed = {bonus = -0.05}};
data.raw.module["productivity-module-2"].effect = { productivity = {bonus = 0.06}, consumption = {bonus = 0.50}, pollution = {bonus = 0.075}, speed = {bonus = -0.10}};
data.raw.module["productivity-module-3"].effect = { productivity = {bonus = 0.09}, consumption = {bonus = 0.75}, pollution = {bonus = 0.1125}, speed = {bonus = -0.15}};
data.raw.module["5d-productivity-module-4"].effect = { productivity = {bonus = 0.12}, consumption = {bonus = 1}, pollution = {bonus = 0.15}, speed = {bonus = -0.20}};
data.raw.module["5d-productivity-module-5"].effect = { productivity = {bonus = 0.15}, consumption = {bonus = 1.25}, pollution = {bonus = 0.1875}, speed = {bonus = -0.25}};

data.raw.recipe["productivity-module-3"].ingredients = {{"productivity-module-2", 4},{"advanced-circuit", 5},{"processing-unit", 5},{"alien-artifact", 1}}
data.raw.recipe["5d-productivity-module-4"].ingredients = {{"productivity-module-3", 4},{"advanced-circuit", 5},{"processing-unit", 5},{"alien-artifact", 1}}
data.raw.recipe["5d-productivity-module-5"].ingredients = {{"5d-productivity-module-4", 4},{"advanced-circuit", 5},{"processing-unit", 5},{"alien-artifact", 1}}

--Effectivity
data.raw.module["effectivity-module"].effect = { consumption = {bonus = -0.25}};
data.raw.module["effectivity-module-2"].effect = { consumption = {bonus = -0.5}};
data.raw.module["effectivity-module-3"].effect = { consumption = {bonus = -0.75}};
data.raw.module["5d-effectivity-module-4"].effect = { consumption = {bonus = -1}};
data.raw.module["5d-effectivity-module-5"].effect = { consumption = {bonus = -1.25}};

data.raw.recipe["effectivity-module-3"].ingredients = {{"effectivity-module-2", 4},{"advanced-circuit", 5},{"processing-unit", 5},{"alien-artifact", 1}}
data.raw.recipe["5d-effectivity-module-4"].ingredients = {{"effectivity-module-3", 4},{"advanced-circuit", 5},{"processing-unit", 5},{"alien-artifact", 1}}
data.raw.recipe["5d-effectivity-module-5"].ingredients = {{"5d-effectivity-module-4", 4},{"advanced-circuit", 5},{"processing-unit", 5},{"alien-artifact", 1}}

--Pollution
data.raw.module["5d-pollution-module-1"].effect = { pollution = {bonus = -0.2}};
data.raw.module["5d-pollution-module-2"].effect = { pollution = {bonus = -0.4}};
data.raw.module["5d-pollution-module-3"].effect = { pollution = {bonus = -0.6}};
data.raw.module["5d-pollution-module-4"].effect = { pollution = {bonus = -0.8}};
data.raw.module["5d-pollution-module-5"].effect = { pollution = {bonus = -1}};

data.raw.recipe["5d-pollution-module-3"].ingredients = {{"5d-pollution-module-2", 4},{"advanced-circuit", 5},{"processing-unit", 5},{"alien-artifact", 1}}
data.raw.recipe["5d-pollution-module-4"].ingredients = {{"5d-pollution-module-3", 4},{"advanced-circuit", 5},{"processing-unit", 5},{"alien-artifact", 1}}
data.raw.recipe["5d-pollution-module-5"].ingredients = {{"5d-pollution-module-4", 4},{"advanced-circuit", 5},{"processing-unit", 5},{"alien-artifact", 1}}

--Speed
data.raw.module["speed-module"].effect = { speed = {bonus = 0.15}, consumption = {bonus = 0.4}};
data.raw.module["speed-module-2"].effect = { speed = {bonus = 0.3}, consumption = {bonus = 0.55}};
data.raw.module["speed-module-3"].effect = { speed = {bonus = 0.45}, consumption = {bonus = 0.7}};
data.raw.module["5d-speed-module-4"].effect = { speed = {bonus = 0.60}, consumption = {bonus = 0.85}};
data.raw.module["5d-speed-module-5"].effect = { speed = {bonus = 0.75}, consumption = {bonus = 1}};

data.raw.recipe["speed-module-3"].ingredients = {{"speed-module-2", 4},{"advanced-circuit", 5},{"processing-unit", 5},{"alien-artifact", 1}}
data.raw.recipe["5d-speed-module-4"].ingredients = {{"speed-module-3", 4},{"advanced-circuit", 5},{"processing-unit", 5},{"alien-artifact", 1}}
data.raw.recipe["5d-speed-module-5"].ingredients = {{"5d-speed-module-4", 4},{"advanced-circuit", 5},{"processing-unit", 5},{"alien-artifact", 1}}


-- Mixed Modules --
data.raw.module["5d-effectivity-productivity-4"].effect = { productivity = {bonus = 0.10}, consumption = {bonus = 0.2}, pollution = {bonus = 0.125}, speed = {bonus = -0.20}};
data.raw.module["5d-effectivity-productivity-4"].limitation = productivitymodulelimitation();
data.raw.module["5d-effectivity-productivity-4"].limitation_message_key = "production-module-usable-only-on-intermediates";

data.raw.module["5d-effectivity-productivity-5"].effect = { productivity = {bonus = 0.12}, consumption = {bonus = 0.25}, pollution = {bonus = 0.15}, speed = {bonus = -0.25}};
data.raw.module["5d-effectivity-productivity-5"].limitation = productivitymodulelimitation();
data.raw.module["5d-effectivity-productivity-5"].limitation_message_key = "production-module-usable-only-on-intermediates";

data.raw.module["5d-pollution-productivity-4"].effect = { productivity = {bonus = 0.12}, consumption = {bonus = 1}, pollution = {bonus = -0.675}, speed = {bonus = -0.20}};
data.raw.module["5d-pollution-productivity-4"].limitation = productivitymodulelimitation();
data.raw.module["5d-pollution-productivity-4"].limitation_message_key = "production-module-usable-only-on-intermediates";

data.raw.module["5d-pollution-productivity-5"].effect = { productivity = {bonus = 0.15}, consumption = {bonus = 1.25}, pollution = {bonus = -0.85}, speed = {bonus = -0.25}};
data.raw.module["5d-pollution-productivity-5"].limitation = productivitymodulelimitation();
data.raw.module["5d-pollution-productivity-5"].limitation_message_key = "production-module-usable-only-on-intermediates";

data.raw.module["5d-pollution-effectivity-4"].effect = { pollution = {bonus = -0.80}, consumption = {bonus = -1}};
data.raw.module["5d-pollution-effectivity-5"].effect = { pollution = {bonus = -1}, consumption = {bonus = -1.25}};

data.raw.module["5d-speed-effectivity-4"].effect = { speed = {bonus = 0.5}, consumption = {bonus = 0.2}};
data.raw.module["5d-speed-effectivity-5"].effect = { speed = {bonus = 0.6}, consumption = {bonus = 0.2}};

data.raw.module["5d-speed-pollution-4"].effect = { speed = {bonus = 0.6},pollution = {bonus = -0.8}, consumption = {bonus = 0.85}};
data.raw.module["5d-speed-pollution-5"].effect = { speed = {bonus = 0.75},pollution = {bonus = -1}, consumption = {bonus = 1}};

data.raw.module["5d-speed-productivity-4"].effect = { productivity = {bonus = 0.10}, consumption = {bonus = 1.85}, pollution = {bonus = 0.125}, speed = {bonus = 0.30}};
data.raw.module["5d-speed-productivity-4"].limitation = productivitymodulelimitation();
data.raw.module["5d-speed-productivity-4"].limitation_message_key = "production-module-usable-only-on-intermediates";

data.raw.module["5d-speed-productivity-5"].effect = { productivity = {bonus = 0.12}, consumption = {bonus = 2.25}, pollution = {bonus = 0.15}, speed = {bonus = 0.35}};
data.raw.module["5d-speed-productivity-5"].limitation = productivitymodulelimitation();
data.raw.module["5d-speed-productivity-5"].limitation_message_key = "production-module-usable-only-on-intermediates";





data:extend({
  {
    type = "item-group",
    name = "module",
    order = "gf",
    inventory_order = "gf",
    icon = "__5dim_core__/graphics/icon/module.png",
  },
  {
    type = "item-subgroup",
    name = "speed",
    group = "module",
    order = "a"
  },
  {
    type = "item-subgroup",
    name = "effectivity",
    group = "module",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "productivity",
    group = "module",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "pollution",
    group = "module",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "module-4",
    group = "module",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "module-5",
    group = "module",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "welder",
    group = "module",
    order = "g"
  },
})