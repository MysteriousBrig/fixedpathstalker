-- ITEM META START --
local ITEM = ix.meta.item or {}

function ITEM:GetWeight()
	return self:GetData("weight", nil) or self.weight or nil
end

ix.meta.item = ITEM
-- ITEM META END --

-- CHARACTER META START --
local CHAR = ix.meta.character or {}
local StrhMulti = 0.3 -- multiplier goes from 0.1 to 1

function CHAR:Overweight()
	return (self:GetData("carry", 0) - math.Clamp((self:GetAttribute("strength", 0) * StrhMulti), 0, 60 )) > ix.config.Get("maxWeight", 30)
end

function CHAR:CanCarry(item)
	return ix.weight.CanCarry(item:GetWeight(), (self:GetData("carry", 0) - math.Clamp((self:GetAttribute("strength", 0) * StrhMulti), 0, 60 )))
end

function CHAR:RemoveCarry(item)
    local strengthModifier = self:GetAttribute("strength", 0) * StrhMulti
    self:SetData("carry", math.max(self:GetData("carry", 0) - item:GetWeight(), 0) + strengthModifier)
end

function CHAR:AddCarry(item)
    local strengthModifier = self:GetAttribute("strength", 0) * StrhMulti
    self:SetData("carry", math.max(self:GetData("carry", 0) + item:GetWeight(), 0) + strengthModifier)
end

function CHAR:DropWeight(weight)
	self:SetData("carry", math.max(self:GetData("carry", 0) - weight, 0))
end


ix.meta.char = CHAR
-- CHARACTER META END --
