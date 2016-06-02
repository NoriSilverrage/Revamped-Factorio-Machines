modname="__RFM-war__"

baseresistances = true

nori_test_state = true

if remote.interfaces.Macromanaged_Turrets
    LogisticTurret["gun-turret"] = {ammo = "piercing-bullet-magazine", count = 10}
    LogisticTurret["adv-ammo-turret"] = {ammo = "piercing-bullet-magazine", count = 10}
    LogisticTurret["sniper-ammo-turret"] = {ammo = "piercing-bullet-magazine", count = 10}
    LogisticTurret["ac-ammo-turret"] = {ammo = "autocannon-shell", count = 100}
    LogisticTurret["rocket-ammo-turret"] = {ammo = "rocket", count = 100}
end
