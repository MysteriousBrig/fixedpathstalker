ITEM.name = "Surgical Kit"
ITEM.description = "A Surgical kit ideal for trained personnel."
ITEM.longdesc = "A Surgical Kit equipped with advanced, disposable medical equipment. Such a kit can only be used by the medically inclined, including tools and supplies that are too advanced for many to properly use."
ITEM.model = "models/carlsmei/escapefromtarkov/medical/core_medical_surgical_kit.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Medical"
ITEM.price = "650"
ITEM.flag = "1"
ITEM.quantity = 4
ITEM.sound = "stalkersound/inv_bandage.mp3"
ITEM.weight = 2.5

ITEM.functions.use = {
	name = "Use",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)
	
		ix.chat.Send(item.player, "iteminternal", "applies their "..item.name..".", false)


		quantity = quantity - 1

		if (quantity >= 1) then
			item:SetData("quantity", quantity)
			return false
		end

		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}

function ITEM:GetDescription()
	if (!self.entity or !IsValid(self.entity)) then
		local quant = self:GetData("quantity", self.quantity)
		local str = self.longdesc.."\n \nThere's only "..quant.." uses left."

		return str
	else
		return self.desc
	end
end

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)

		draw.SimpleText(item:GetData("quantity", item.quantity).."/"..item.quantity, "DermaDefault", 3, h - 1, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, color_black)
	end
end