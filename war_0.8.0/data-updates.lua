require 'util'
-- copy the tech bonuses for gun-turrets to the ammoxbox gun-turret so they apply for both
for _, tech in pairs(data.raw.technology) do
    if tech.effects then
        for _, effect in pairs(tech.effects) do
            if effect.turret_id and effect.turret_id == 'gun-turret' then
                local neweff = table.deepcopy(effect)
                neweff.turret_id = 'adv-ammo-turret'
                table.insert(tech.effects, neweff)
            end
        end
    end
end
