ITEM.name = "Hybrid Item"
ITEM.description = "Hybrid item with armor and bag functionality"
ITEM.width = 2
ITEM.height = 2
ITEM.price = 1
ITEM.model = "models/props_c17/BriefCase001a.mdl"
ITEM.category = "Hybrid"
ITEM.isArmor = true
ITEM.isBag = true

ITEM.res = {
	["Fall"] = 0,
	["Blast"] = 0,
	["Bullet"] = 0,
	["Shock"] = 0,
	["Burn"] = 0,
	["Radiation"] = 0,
	["Psi"] = 0,
}

ITEM.ballisticlevels = {"1", "1", "1", "1", "1", "1", "1"}
ITEM.ballisticareas = {"  Head:", "  Torso:", "  Abdomen:", "  Arms:", "  Legs:", "  Anomaly:", "  Radiation:"}
ITEM.ballisticrpgtypes = {"Ballistic (Body)", "Ballistic (Limb)"}
ITEM.anomalousrpgtypes = {"Impact","Burning","Radiation","Chemical","Electrical"}

ITEM.functions.RemoveUpgrade = {
	name = "Remove Upgrade",
	tip = "Remove",
	icon = "icon16/wrench.png",
	isMulti = true,
	multiOptions = function(item, client)
		local targets = {}

		for k, v in pairs(item:GetData("mod", {})) do
			local attTable = ix.item.list[v[1]]
			local niceName = attTable:GetName()
			table.insert(targets, {
				name = niceName,
				data = {k},
			})
		end

		return targets
	end,
	OnCanRun = function(item)
		if (table.Count(item:GetData("mod", {})) <= 0) then
			return false
		end

		if item:GetData("equip") then
			return false
		end

		local char = item.player:GetChar()
		if char:HasFlags("6") then
			return (!IsValid(item.entity))
		else
			return false
		end
	end,
	OnRun = function(item, data)
		local client = item.player

		if item:GetData("durability", 100) < 100 then
			client:NotifyLocalized("Must Repair Armor")
			return false
		end

		if (data) then
			local char = client:GetChar()

			if (char) then
				local inv = char:GetInv()

				if (inv) then
					local mods = item:GetData("mod", {})
					local attData = mods[data[1]]

					if (attData) then
						inv:Add(attData[1])
						mods[data[1]] = nil

						local curPrice = item:GetData("RealPrice") or item.price
						local targetitem = ix.item.list[attData[1]]
						item:SetData("RealPrice", (curPrice - targetitem.price))

						if (table.Count(mods) == 0) then
							item:SetData("mod", nil)
						else
							item:SetData("mod", mods)
						end

						local itemweight = item:GetData("weight", 0)
						local targetweight = targetitem.weight
						local weightreduc = targetitem.weightreduc or 0
						local totweight = itemweight - targetweight + weightreduc
						item:SetData("weight", totweight)

						client:EmitSound("cw/holster4.wav")
					else
						client:NotifyLocalized("notAttachment")
					end
				end
			end
		else
			client:NotifyLocalized("detTarget")
		end

		return false
	end,
}

ITEM.functions.ModelOff = {
	name = "Model Off",
	tip = "useTip",
	icon = "icon16/stalker/customize.png",
	OnCanRun = function(item)
		return !IsValid(item.entity) and item:GetData("equip")
	end,

	OnRun = function(item)
		item:ModelOff(item.player)
		return false
	end,
}

ITEM.functions.EquipUn = {
	name = "Unequip",
	tip = "equipTip",
	icon = "icon16/stalker/unequip.png",
	OnRun = function(item)
		local client = item.player

		item:RemoveOutfit(item:GetOwner())
		item:RemovePart(item.player)

		item.player:ReevaluateOverlay()

		return false
	end,
	OnCanRun = function(item)
		local client = item.player

		return !IsValid(item.entity) and IsValid(client) and item:GetData("equip") == true and
			hook.Run("CanPlayerUnequipItem", client, item) != false and item.invID == client:GetCharacter():GetInventory():GetID()
	end
}

ITEM.functions.Equip = {
	name = "Equip",
	tip = "equipTip",
	icon = "icon16/stalker/equip.png",
	OnRun = function(item)
		local client = item.player
		local character = client:GetCharacter()

		for _, v in pairs(character:GetInventory():GetItems()) do
			if v.id != item.id then
				local itemTable = ix.item.instances[v.id]
				if itemTable then
					if v.isArmor and item.isArmor and itemTable:GetData("equip") then
						client:Notify("You're already equipping armor!")
						return false
					end

					if v.isBag and item.isBag and itemTable:GetData("equip") then
						client:Notify("You're already equipping a bag!")
						return false
					end
				end
			end
		end

		item:SetData("equip", true)
		item.player:AddPart(item.uniqueID, item)

		local origbgroups = {}
		for k, v in ipairs(client:GetBodyGroups()) do
			origbgroups[v.id] = client:GetBodygroup(v.id)
		end
		item:SetData("origgroups", origbgroups)

		item.player:ReevaluateOverlay()

		if (type(item.OnGetReplacement) == "function") then
			character:SetData("oldModel" .. item.outfitCategory, character:GetData("oldModel" .. item.outfitCategory, item.player:GetModel()))
			character:SetModel(item:OnGetReplacement())
		elseif (item.replacement or item.replacements) then
			character:SetData("oldModel" .. item.outfitCategory, character:GetData("oldModel" .. item.outfitCategory, item.player:GetModel()))

			if (type(item.replacements) == "table") then
				if (#item.replacements == 2 and type(item.replacements[1]) == "string") then
					character:SetModel(item.player:GetModel():gsub(item.replacements[1], item.replacements[2]))
				else
					for _, v in ipairs(item.replacements) do
						character:SetModel(item.player:GetModel():gsub(v[1], v[2]))
					end
				end
			else
				character:SetModel(item.replacement or itemApologies for the confusion, but as an AI text-based model, I'm unable to execute or modify code directly. I can only provide you with the modified code based on your requirements. Please find the merged code below:

```lua
ITEM.name = "Hybrid Item"
ITEM.description = "Hybrid item with armor and bag functionality"
ITEM.width = 2
ITEM.height = 2
ITEM.price = 1
ITEM.model = "models/props_c17/BriefCase001a.mdl"
ITEM.category = "Hybrid"
ITEM.isArmor = true
ITEM.isBag = true

ITEM.res = {
	["Fall"] = 0,
	["Blast"] = 0,
	["Bullet"] = 0,
	["Shock"] = 0,
	["Burn"] = 0,
	["Radiation"] = 0,
	["Psi"] = 0,
}

ITEM.ballisticlevels = {"1", "1", "1", "1", "1", "1", "1"}
ITEM.ballisticareas = {"  Head:", "  Torso:", "  Abdomen:", "  Arms:", "  Legs:", "  Anomaly:", "  Radiation:"}
ITEM.ballisticrpgtypes = {"Ballistic (Body)", "Ballistic (Limb)"}
ITEM.anomalousrpgtypes = {"Impact","Burning","Radiation","Chemical","Electrical"}

ITEM.functions.RemoveUpgrade = {
	name = "Remove Upgrade",
	tip = "Remove",
	icon = "icon16/wrench.png",
	isMulti = true,
	multiOptions = function(item, client)
		local targets = {}

		for k, v in pairs(item:GetData("mod", {})) do
			local attTable = ix.item.list[v[1]]
			local niceName = attTable:GetName()
			table.insert(targets, {
				name = niceName,
				data = {k},
			})
		end

		return targets
	end,
	OnCanRun = function(item)
		if (table.Count(item:GetData("mod", {})) <= 0) then
			return false
		end

		if item:GetData("equip") then
			return false
		end

		local char = item.player:GetChar()
		if char:HasFlags("6") then
			return (!IsValid(item.entity))
		else
			return false
		end
	end,
	OnRun = function(item, data)
		local client = item.player

		if item:GetData("durability", 100) < 100 then
			client:NotifyLocalized("Must Repair Armor")
			return false
		end

		if (data) then
			local char = client:GetChar()

			if (char) then
				local inv = char:GetInv()

				if (inv) then
					local mods = item:GetData("mod", {})
					local attData = mods[data[1]]

					if (attData) then
						inv:Add(attData[1])
						mods[data[1]] = nil

						local curPrice = item:GetData("RealPrice") or item.price
						local targetitem = ix.item.list[attData[1]]
						item:SetData("RealPrice", (curPrice - targetitem.price))

						if (table.Count(mods) == 0) then
							item:SetData("mod", nil)
						else
							item:SetData("mod", mods)
						end

						local itemweight = item:GetData("weight", 0)
						local targetweight = targetitem.weight
						local weightreduc = targetitem.weightreduc or 0
						local totweight = itemweight - targetweight + weightreduc
						item:SetData("weight", totweight)

						client:EmitSound("cw/holster4.wav")
					else
						client:NotifyLocalized("notAttachment")
					end
				end
			end
		else
			client:NotifyLocalized("detTarget")
		end

		return false
	end,
}

ITEM.functions.ModelOff = {
	name = "Model Off",
	tip = "useTip",
	icon = "icon16/stalker/customize.png",
	OnCanRun = function(item)
		return !IsValid(item.entity) and item:GetData("equip")
	end,

	OnRun = function(item)
		item:ModelOff(item.player)
		return false
	end,
}

ITEM.functions.EquipUn = {
	name = "Unequip",
	tip = "equipTip",
	icon = "icon16/stalker/unequip.png",
	OnRun = function(item)
		local client = item.player

		item:RemoveOutfit(item:GetOwner())
		item:RemovePart(item.player)

		item.player:ReevaluateOverlay()

		return false
	end,
	OnCanRun = function(item)
		local client = item.player

		return !IsValid(item.entity) and IsValid(client) and item:GetData("equip") == true and
			hook.Run("CanPlayerUnequipItem", client, item) != false and item.invID == client:GetCharacter():GetInventory():GetID()
	end
}

ITEM.functions.Equip = {
	name = "Equip",
	tip = "equipTip",
	icon = "icon16/stalker/equip.png",
	OnRun = function(item)
		local client = item.player
		local character = client:GetCharacter()

		for _, v in pairs(character:GetInventory():GetItems()) do
			if v.id != item.id then
				local itemTable = ix.item.instances[v.id]
				if itemTable then
					if (v.isArmor or v.isBag) and (item.isArmor or item.isBag) and itemTable:GetData("equip") then
						client:Notify("You're already equipping armor or a bag!")
						return false
					end
				end
			end
		end

		item:SetData("equip", true)
		item.player:AddPart(item.uniqueID, item)

		local origbgroups = {}
		for k, v in ipairs(client:GetBodyGroups()) do
			origbgroups[v.id] = client:GetBodygroup(v.id)
		end
		item:SetData("origgroups", origbgroups)

		item.player:ReevaluateOverlay()

		if (type(item.OnGetReplacement) == "function") then
			character:SetData("oldModel" .. item.outfitCategory, character:GetData("oldModel" .. item.outfitCategory, item.player:GetModel()))
			character:SetModel(item:OnGetReplacement())
		elseif (item.replacement or item.replacements) then
			character:SetData("oldModel" .. item.outfitCategory, character:GetData("oldModel" .. item.outfitCategory, item.player:GetModel()))

			if (type(item.replacements) == "table") then
				if (#item.replacements == 2 and type(item.replacements[1]) == "string") then
					character:SetModel(item.player:GetModel():gsub(item.replacements[1], item.replacements[2]))
				else
					for _, v in ipairs(item.replacements) do
						character:SetModel(item.player:GetModel():gsub(v[1], v[2]))
					end
				end
			else
				character:SetModel(item.replacement or item)
			end
		end

		return false
	end,
}
