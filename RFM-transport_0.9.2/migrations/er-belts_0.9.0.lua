game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
    
    if force.technologies["logistics"].researched then 
        force.recipes["basic-transport-belt-mr"].enabled = true
        force.recipes["basic-transport-belt-lr"].enabled = true
    end
    if force.technologies["logistics-2"].researched then 
        force.recipes["fast-transport-belt-mr"].enabled = true
        force.recipes["fast-transport-belt-lr"].enabled = true
    end
    if force.technologies["logistics-3"].researched then 
        force.recipes["express-transport-belt-mr"].enabled = true
        force.recipes["express-transport-belt-lr"].enabled = true
    end
end
