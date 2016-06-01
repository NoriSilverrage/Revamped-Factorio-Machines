data.raw.recipe["electric-stone-furnace"].enabled = false

for i = 1, #data.raw.technology["advanced-material-processing"].effects do
    effect = data.raw.technology["advanced-material-processing"].effects[i]
    if effect.type == "unlock-recipe" and effect.recipe == "electric-steel-furnace" then
        index = i
    end
end

table.remove(data.raw.technology["advanced-material-processing"].effects, index)

data.raw.furnace["electric-furnace-2"].energy_usage = "250kW"
data.raw.recipe["electric-furnace-2"].ingredients =
    {
		{"steel-plate", 20},
		{"electric-furnace", 1},
		{"advanced-circuit", 10}
    }
data.raw.furnace["electric-furnace-2"].module_specification =
    {
        module_slots = 3,
        module_info_icon_shift = {0, 0.8}
    }

    
data.raw.furnace["electric-furnace-3"].energy_usage = "320kW"
data.raw.recipe["electric-furnace-3"].ingredients =
    {
		{"steel-plate", 25},
		{"electric-furnace-2", 1},
		{"processing-unit", 5}
    }

data.raw.technology["advanced-material-processing-2"].upgrade = true
data.raw.technology["advanced-material-processing-3"].upgrade = true
data.raw.technology["advanced-material-processing-4"].upgrade = true
