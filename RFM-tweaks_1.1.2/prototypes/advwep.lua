data:extend(
{
 
    {
        type = "technology",
        name = "laser-damage-6",
        icon = "__base__/graphics/technology/military.png",
        prerequisites = {"laser-damage-5"},
        effects =
            {
                {
                type = "ammo-damage",
                ammo_category = "energy-pack",
                modifier = "0.3"
                }
            },
        unit =
            {
            count = 150,
            ingredients =
                {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},
                {"alien-science-pack", 1}
                },
            time = 180
            },
        order = ""
    },

    --Laser Speed
    {
        type = "technology",
        name = "laser-speed-6",
        icon = "__base__/graphics/technology/military.png",
        prerequisites = {"laser-speed-5"},
        effects =
            {
                {
                type = "gun-speed",
                ammo_category = "energy-pack",
                modifier = "0.3"
                }
            },
        unit =
            {
            count = 150,
            ingredients =
                {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},
                {"alien-science-pack", 1}
                },
            time = 180
            },
        order = ""
    },
})