ITEM.name = "Radio Protectant"
ITEM.model = "models/kek1ch/drug_radioprotector.mdl"
ITEM.description = "Drug designed to protect the body from absorbing gamma radiation. Often results in the user suffering from Tremors, greatly reducing their focus, and especially their aim."
ITEM.category = "Medical"
ITEM.price = 750
ITEM.weight = 0.25
ITEM.flag = "1"

ITEM.functions.Use = {
	sound = "stalker/interface/inv_eat_pills_effect.ogg",
	OnRun = function(itemTable)
		local client = itemTable.player

	end
}
