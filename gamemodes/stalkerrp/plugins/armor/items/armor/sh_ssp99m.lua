ITEM.name = "SSP-99M Ecologist Suit"
ITEM.model = "models/kek1ch/ecolog_outfit_green.mdl"
ITEM.replacements = "models/nasca/stalker/male_ssp_eco.mdl"
ITEM.description= "An advanced environmental suit."
ITEM.longdesc = "A high quality modified SSP-99 suit. It provides increased body protection from bullet and splinter damage. It is designed for the guards working with scientific expeditions. It provides good protection from radiation and biological anomalies. It is resistant to chemically aggressive environments and other effects dangerous to the body.\n\nBallistic Protection:\nSkull: II\nNeck & Face: II\nTorso: IIIA\nLimbs: II\nWeight: 2"
ITEM.width = 2
ITEM.height = 2
ITEM.price = 150000
ITEM.flag = "A"
ITEM.br = 0.2
ITEM.fbr = 5
ITEM.ar = 0.8
ITEM.far = 6
ITEM.isHelmet = false
ITEM.isGasmask = true
ITEM.isArmor = true
ITEM.radProt = 0.8
ITEM.repairCost = ITEM.price/100*1
ITEM.overlayPath = "vgui/overlays/hud_sci"
ITEM.img = Material("vgui/hud/ssp99m.png")
ITEM.noBusiness = true
ITEM.artifactcontainers = {"5"}
ITEM.weight = 12
ITEM.maxArmor = 20
ITEM.res = {
	["Bullet"] = 0.3,
	["Blast"] = 0.3,
	["Fall"] = 0.3,
	["Burn"] = 0.7,
	["Radiation"] = 0.8,
	["Chemical"] = 0.8,
	["Shock"] = 0.7,
	["Psi"] = 0.7,
}

ITEM.newSkin = 1
ITEM.bodygroup = {0}
ITEM.bodygroupsub = {0}