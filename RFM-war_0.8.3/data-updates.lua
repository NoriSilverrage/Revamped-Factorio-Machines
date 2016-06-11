require 'util'

local addtheturrets = {
  "adv-ammo-turret",
  "sniper-ammo-turret",
  "ac-ammo-turret",
  "rocket-ammo-turret"
}

-- Turret tech bonuses
for _, tech in pairs(data.raw.technology) do
    if tech.effects then
        for _, effect in pairs(tech.effects) do
            if effect.turret_id and effect.turret_id == 'gun-turret' then
                
                    for i, addtheturrets in pairs(addtheturrets) do
                    local neweff = table.deepcopy(effect)
                    neweff.turret_id = addtheturrets
                    table.insert(tech.effects, neweff)
                    end
            end
        end
    end
end
