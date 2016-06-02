require "loader"
local turretFillSet = {group="turrets", limits= {10}, "ammo-bullets"}

loader.extendItemArray {["ammo-shells"] = {"autocannon-shell"}}
loader.addSets {["adv-ammo-turret"] = turretFillSet,["sniper-ammo-turret"] = turretFillSet}
loader.addSets {["rocket-ammo-turret"]= {group="turrets", limits= {50}, "ammo-rockets" }}


