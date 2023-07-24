ITEM.name = "Monolith Suit (Female)"
ITEM.model = "models/kek1ch/monolith_outfit.mdl"
ITEM.replacements = "models/nasca/stalker/female_sunrise_mono.mdl"
ITEM.description = "A suit worn by the Monolith."
ITEM.longdesc = "A mysterious outfit worn as standard by members of the Monolith faction. This advanced design consists of an environmental bodysuit that provides more than radiological protection, underneath a bulletproof vest. With these suits being discovered in underground labs, this suit is considered taboo among stalkers.\n\nBallistic Protection:\nTorso: III\nLimbs: II\nWeight: 2"
ITEM.width = 2
ITEM.height = 2
ITEM.price = 45000
ITEM.flag = "1"
ITEM.br = 0.15
ITEM.fbr = 6
ITEM.ar = 0.15
ITEM.far = 2
ITEM.isGasmask = true
ITEM.isArmor = true
ITEM.repairCost = ITEM.price/100*1
ITEM.overlayPath = "vgui/overlays/hud_gas"
ITEM.img = Material("vgui/hud/eo20.png")
ITEM.noBusiness = true
ITEM.artifactcontainers = {"3"}
ITEM.weight = 10
ITEM.maxArmor = 20
ITEM.res = {
	["Bullet"] = 0.5,
	["Blast"] = 0.5,
	["Fall"] = 0.5,
	["Burn"] = 0.5,
	["Radiation"] = 0.6,
	["Chemical"] = 0.4,
	["Shock"] = 0.5,
	["Psi"] = 0.0,
}

ITEM.newSkin = 0
ITEM.bodygroup = {0}
ITEM.bodygroupsub = {0}