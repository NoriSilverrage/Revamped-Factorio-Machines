game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
    
    if force.technologies["military-2"].researched then 
        force.recipes["large-basic-bullet-magazine"].enabled = true
        force.recipes["large-piercing-bullet-magazine"].enabled = true
    end
    if force.technologies["flame-thrower"].researched then 
        force.recipes["large-flame-thrower-ammo"].enabled = true
    end
    if force.technologies["rocketry"].researched then 
        force.recipes["large-rocket"].enabled = true
    end
    
    if force.technologies["explosive-rocketry"].researched then 
        force.recipes["large-explosive-rocket"].enabled = true
    end
    
    if force.technologies["rocket-gun-turret"].researched then 
        force.recipes["large-impacting-rocket"].enabled = true
    end
end