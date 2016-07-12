game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
    
    if force.technologies["personal-roboport-equipment"].researched then 
        force.recipes["big-personal-roboport-equipment"].enabled = true
        force.recipes["small-personal-roboport-equipment"].enabled = true
    end
end
