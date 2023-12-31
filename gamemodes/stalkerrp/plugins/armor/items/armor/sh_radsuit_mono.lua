ITEM.name = "Monolith Heavy Armor"
ITEM.model ="models/kek1ch/exolight_outfit.mdl"
ITEM.replacements ="models/nasca/stalker/male_exo_mono.mdl"
ITEM.description= "A set of TB-3 heavy armor."
ITEM.longdesc = "The Monolith has built a stockpile of these heavily armored suits over the years. Possessing efficient weight distribution due to advances in the design, this outfit is used by the most elite warriors of the Monolith. Those tasked with defending areas of vital importance such as the Brain Scorcher or Chernobyl NPP are afforded nothing but the best to ensure success in their mission.\n\nBallistic Protection:\nSkull: IV\nNeck & Face: IIIA\nTorso: V\nLimbs: III+\nWeight: 3"
ITEM.width = 2
ITEM.height = 4
ITEM.price = 300000
ITEM.flag = "A"
ITEM.br = 0.6
ITEM.fbr = 11
ITEM.ar = 0.2
ITEM.far = 3
ITEM.isGasmask = true
ITEM.isHelmet = false
ITEM.isArmor = true
ITEM.overlayPath = "vgui/overlays/hud_merc"
ITEM.img = Material("vgui/hud/xm40.png")
ITEM.noBusiness = true
ITEM.artifactcontainers = {"2"}
ITEM.weight = 22
ITEM.maxArmor = 40
ITEM.res = {
	["Bullet"] = 0.9,
	["Blast"] = 0.9,
	["Fall"] = 0.9,
	["Burn"] = 0.4,
	["Radiation"] = 0.6,
	["Chemical"] = 0.4,
	["Shock"] = 0.4,
	["Psi"] = 0.0,
}

ITEM.newSkin = 0
ITEM.bodyGroups = {
	["Servomotors"] = 1,
}