ITEM.name = "Rate of Fire Upgrade 3"
ITEM.description = "A set of high quality lightened weapon parts used to upgrade a firearm's fire rate by a notable margin."
ITEM.longdesc = "A set of quality parts such as lightened bolts and pumps that allow a weapon to cycle faster. \n\nBoosts weapon ROF by given amount depending on which fire mode it's capable of:\nManual Action (bolt, pump): +1\nSemi-Automatic: +4\nFullly Automatic: +5"
ITEM.category = "Upgrades"
ITEM.isGenericUpgrade = true
ITEM.model = "models/Items/BoxSRounds.mdl"
ITEM.width = 2
ITEM.height = 1
ITEM.price = 2000
ITEM.slot = 5
ITEM.isAttachment = true

ITEM.attSearch = { "fn_rof1", }
ITEM.weight = 0.35
ITEM.upgradeIcon = Material("materials/vgui/ui/stalker/weaponupgrades/firerate.png")

-- Slot Numbers Defined:

-- Caliber = 1
-- Magazine = 2
-- UPG 1-1 = 3
-- UPG 1-2 = 4
-- UPG 1-3 = 5
-- UPG 2-1 = 6
-- UPG 2-2 = 7
-- UPG 2-3 = 8

-- Additional slots can be added so long as they line up with the SWEP's attachment code appropriately.