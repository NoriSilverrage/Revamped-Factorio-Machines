--Module


data:extend({
  {
    type = "item-group",
    name = "module",
    order = "gf",
    inventory_order = "gf",
    icon = "__base__/graphics/technology/module.png",
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


data.raw.module["speed-module"].subgroup = "speed";
data.raw.module["speed-module"].order = "a";
data.raw.module["speed-module-2"].subgroup = "speed";
data.raw.module["speed-module-2"].order = "b";
data.raw.module["speed-module-3"].subgroup = "speed";
data.raw.module["speed-module-3"].order = "c";
data.raw.module["productivity-module"].subgroup = "productivity";
data.raw.module["productivity-module"].order = "a";
data.raw.module["productivity-module-2"].subgroup = "productivity";
data.raw.module["productivity-module-2"].order = "b";
data.raw.module["productivity-module-3"].subgroup = "productivity";
data.raw.module["productivity-module-3"].order = "c";
data.raw.module["effectivity-module"].subgroup = "effectivity";
data.raw.module["effectivity-module"].order = "a";
data.raw.module["effectivity-module-2"].subgroup = "effectivity";
data.raw.module["effectivity-module-2"].order = "b";
data.raw.module["effectivity-module-3"].subgroup = "effectivity";
data.raw.module["effectivity-module-3"].order = "c";
