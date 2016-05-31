game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
    
    if force.technologies["steam-engine-generator-1"].researched then 
        force.recipes["steam-turbine-2"].enabled = true
    end
    if force.technologies["steam-engine-generator-2"].researched then 
        force.recipes["steam-turbine-3"].enabled = true
    end
end
