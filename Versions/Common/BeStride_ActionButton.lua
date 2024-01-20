BeStride_ActionButtonRegularMount = {}
BeStride_ActionButtonGroundMount = {}
BeStride_ActionButtonDragonRidingMount = {}
BeStride_ActionButtonFlightMount = {}
BeStride_ActionButtonPassengerMount = {}
BeStride_ActionButtonRepairMount = {}

-- Creates Action Buttons
function BeStride:CreateActionButton(buttontype)
	local name = "BeStride_AB" .. buttontype .. "Mount"

	local br = CreateFrame("Button", name, UIParent, "SecureActionButtonTemplate,ActionButtonTemplate")
	br:RegisterForClicks("AnyDown")
	br:SetAttribute("type","macro")
	br:SetAttribute("macrotext",nil)
	
    if buttontype == "Regular" then
		Mixin(br, BeStride_ActionButtonRegularMount)
	elseif buttontype == "Ground" then
		Mixin(br, BeStride_ActionButtonGroundMount)
	elseif buttontype == "DragonRiding" then
		Mixin(br, BeStride_ActionButtonDragonRidingMount)
	elseif buttontype == "Flight" then
		Mixin(br, BeStride_ActionButtonFlightMount)
	elseif buttontype == "Repair" then
		Mixin(br, BeStride_ActionButtonRepairMount)
	elseif buttontype == "Passenger" then
		Mixin(br, BeStride_ActionButtonPassengerMount)
	end
	
	br.id = buttontype
	br:SetScript("PreClick",function (self) self:PreClick() end )
	br:SetScript("PostClick",function (self) self.PostClick() end)
	if br then
		return br
	else
	  BeStride_Debug:Critical("Critical: " .. buttontype)
	end
end

-- +-------+ --
-- Any Mount --
-- +-------+ --

-- Action Button Wrapper
function BeStride_ActionButtonRegularMount:PreClick()
	if BeStride:IsCombat() then
		return
	end
	
	local mount = BeStride:Regular()
	if mount ~= nil then
		self:SetAttribute("macrotext",mount)
	end
end

-- Action Button Cleanup
function BeStride_ActionButtonRegularMount:PostClick()
	if BeStride:IsCombat() then
		return
	end
	
	BeStride_ABRegularMount:SetAttribute("macrotext", nil)
end


-- +----------+ --
-- DragonRiding Mount --
-- +----------+ --

-- Action Button Wrapper
function BeStride_ActionButtonDragonRidingMount:PreClick()
	if BeStride:IsCombat() then
		return
	end
	
	local mount = BeStride:DragonRidingMountButton()
	if mount ~= nil then
		self:SetAttribute("macrotext",mount)
	end
end

-- Action Button Cleanup
function BeStride_ActionButtonDragonRidingMount:PostClick()
	if BeStride:IsCombat() then
		return
	end
	
	BeStride_ABRegularMount:SetAttribute("macrotext", nil)
end


-- +----------+ --
-- Flight Mount --
-- +----------+ --

-- Action Button Wrapper
function BeStride_ActionButtonFlightMount:PreClick()
	if BeStride:IsCombat() then
		return
	end
	
	local mount = BeStride:FlightMountButton()
	if mount ~= nil then
		self:SetAttribute("macrotext",mount)
	end
end

-- Action Button Cleanup
function BeStride_ActionButtonFlightMount:PostClick()
	if BeStride:IsCombat() then
		return
	end
	
	BeStride_ABRegularMount:SetAttribute("macrotext", nil)
end


-- +----------+ --
-- Ground Mount --
-- +----------+ --

-- Action Button Wrapper
function BeStride_ActionButtonGroundMount:PreClick()
	if BeStride:IsCombat() then
		return
	end
	
	local mount = BeStride:GroundMountButton()
	if mount ~= nil then
		self:SetAttribute("macrotext",mount)
	end
end

-- Action Button Cleanup
function BeStride_ActionButtonGroundMount:PostClick()
	if BeStride:IsCombat() then
		return
	end
	
	BeStride_ABRegularMount:SetAttribute("macrotext", nil)
end


-- +-------------+ --
-- Passenger Mount --
-- +-------------+ --

-- Action Button Wrapper
function BeStride_ActionButtonPassengerMount:PreClick()
	if BeStride:IsCombat() then
		return
	end
	
	local mount = BeStride:PassengerMountButton()
	if mount ~= nil then
		self:SetAttribute("macrotext",mount)
	end
end

-- Action Button Cleanup
function BeStride_ActionButtonPassengerMount:PostClick()
	if BeStride:IsCombat() then
		return
	end
	
	BeStride_ABRegularMount:SetAttribute("macrotext", nil)
end


-- +----------+ --
-- Repair Mount --
-- +----------+ --

-- Action Button Wrapper
function BeStride_ActionButtonRepairMount:PreClick()
	if BeStride:IsCombat() then
		return
	end
	
	local mount = BeStride:RepairMountButton()
	if mount ~= nil then
		self:SetAttribute("macrotext",mount)
	end
end

-- Action Button Cleanup
function BeStride_ActionButtonRepairMount:PostClick()
	if BeStride:IsCombat() then
		return
	end
	
	BeStride_ABRegularMount:SetAttribute("macrotext", nil)
end
