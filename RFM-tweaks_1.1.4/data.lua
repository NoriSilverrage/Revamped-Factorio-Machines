require("config")
require("overrides.5dim")
require("overrides.adv-weap")
require("overrides.ammo")
require("overrides.bobs")
require("overrides.cat")
require("overrides.color")
require("overrides.entity")
require("overrides.forcefield")
require("overrides.furnace")
require("overrides.item")
require("overrides.tech")
require("overrides.science")
require("overrides.robominer")

require("prototypes.hardcrafting")


--require("prototypes.nuclear")
--require("overrides.nuclear")
--require("prototypes.chemplant")
--require("prototypes.oil")
--require("prototypes.kspower")


if data.raw.player.player.build_distance < 24 then
	data.raw.player.player.build_distance = 24
	data.raw.player.player.reach_distance = 20
	data.raw.player.player.reach_resource_distance = 20
	data.raw.player.player.drop_item_distance = 20
end	