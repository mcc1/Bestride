-- Hallow's End calendar holiday IDs (region-specific: 321/1405 from Rarity,
-- 324 seen on the TW realms in 2026)
local HALLOWS_END_EVENT_IDS = { [321] = true, [324] = true, [1405] = true }
-- Broom mounts that are instant cast during Hallow's End
local BROOM_MOUNT_SPELLS = {
	419345, -- Eve's Ghastly Rider
}
local MAGIC_BROOM_ITEM = 37011
local HALLOWS_END_RESCAN_SECONDS = 60

local function CalendarTimeToEpoch(t)
	return time({ year = t.year, month = t.month, day = t.monthDay, hour = t.hour or 0, min = t.minute or 0 })
end

-- Reads today's calendar events and caches the Hallow's End start/end.
-- Works off the calendar's displayed month with an offset, so the
-- Blizzard calendar UI is never moved.
function BeStride:ScanHallowsEnd()
	self.hallowsEndScanAt = GetTime()
	if not C_Calendar or not C_DateAndTime then return end

	local now = C_DateAndTime.GetCurrentCalendarTime()
	local monthInfo = C_Calendar.GetMonthInfo()
	if not now or not monthInfo then return end

	local monthOffset = (now.year - monthInfo.year) * 12 + now.month - monthInfo.month
	for i = 1, C_Calendar.GetNumDayEvents(monthOffset, now.monthDay) do
		local event = C_Calendar.GetDayEvent(monthOffset, now.monthDay, i)
		if event and HALLOWS_END_EVENT_IDS[event.eventID] and event.startTime and event.endTime then
			self.hallowsEnd = {
				startTime = CalendarTimeToEpoch(event.startTime),
				endTime = CalendarTimeToEpoch(event.endTime),
			}
			return
		end
	end
end

function BeStride:IsHallowsEnd()
	local now = C_DateAndTime and C_DateAndTime.GetCurrentCalendarTime()
	if not now then return false end
	now = CalendarTimeToEpoch(now)

	local window = self.hallowsEnd
	if window and now >= window.startTime and now < window.endTime then
		return true
	end

	if not self.hallowsEndScanAt or GetTime() - self.hallowsEndScanAt >= HALLOWS_END_RESCAN_SECONDS then
		self:ScanHallowsEnd()
		window = self.hallowsEnd
		return window ~= nil and now >= window.startTime and now < window.endTime
	end
	return false
end

function BeStride:EventCalendarUpdate()
	self.hallowsEndScanAt = nil
end

-- Names of collected, usable broom mounts plus the Magic Broom item.
-- Mount spells can't be cast while moving even when instant; the item can.
function BeStride:GetBroomCandidates()
	local candidates = {}
	if C_MountJournal and not BeStride:MovementCheck() then
		for _, spellID in ipairs(BROOM_MOUNT_SPELLS) do
			local mountID = C_MountJournal.GetMountFromSpell(spellID)
			if mountID then
				local name, _, _, _, isUsable, _, _, _, _, _, isCollected = C_MountJournal.GetMountInfoByID(mountID)
				if name and isCollected and isUsable then
					table.insert(candidates, name)
				end
			end
		end
	end
	if C_Item.GetItemCount(MAGIC_BROOM_ITEM, false) > 0 and (not C_Item.IsUsableItem or C_Item.IsUsableItem(MAGIC_BROOM_ITEM)) then
		local name = ItemToName(MAGIC_BROOM_ITEM)
		if name then
			table.insert(candidates, name)
		end
	end
	return candidates
end

function BeStride:CanBroom()
	if BeStride:GetBroomSetting() ~= true or BeStride:IsCombat() or not BeStride:IsHallowsEnd() then
		return false
	end
	return #BeStride:GetBroomCandidates() > 0
end

-- Broom ahead of class movement spells: only when a fresh mount-up is
-- possible, so mounted/falling/flying/swimming keep the normal flow
function BeStride:CanBroomFirst()
	if IsMounted() or IsFlying() or IsFalling() or IsSwimming() then
		return false
	end
	return BeStride:CanBroom()
end

function BeStride:IsLoanedMount()
	local loanedMount = BeStride:CheckLoanedMount()
	if loanedMount ~= nil then
		return true
	else
		return false
	end
end

function BeStride:CheckLoanedMount()
	local mapID = C_Map.GetBestMapForUnit("player")
	local zone = BeStride:GetMapUntil(mapID,3)
	if zone == nil then
		return nil
	elseif IsSwimming() and (
		zone.mapID == BeStride_Constants.Zone.Vashjir.KelptharForest.id or
		zone.mapID == BeStride_Constants.Zone.Vashjir.ShimmeringExpanse.id or
		zone.mapID == BeStride_Constants.Zone.Vashjir.AbyssalDepths.id or
		zone.mapID == BeStride_Constants.Zone.Vashjir.id
	) then
		return BeStride_Mount:VashjirSeahorse()
	elseif zone.name == LibStub("AceLocale-3.0"):GetLocale("BeStride")["Zone.Dalaran"] then
		local subzone = GetSubZoneText()
		if subzone == LibStub("AceLocale-3.0"):GetLocale("BeStride")["Zone.Dalaran.SubZone.Underbelly"] or
				subzone == LibStub("AceLocale-3.0"):GetLocale("BeStride")["Zone.Dalaran.SubZone.UnderbellyDescent"] or
				subzone == LibStub("AceLocale-3.0"):GetLocale("BeStride")["Zone.Dalaran.SubZone.CircleofWills"] or
				subzone == LibStub("AceLocale-3.0"):GetLocale("BeStride")["Zone.Dalaran.SubZone.BlackMarket"] then
			if C_Item.GetItemCount(139421, false) > 0 then
				return 139421
			end
		end
	elseif zone.name == LibStub("AceLocale-3.0"):GetLocale("BeStride")["Zone.Oculus"] then
		if C_Item.GetItemCount(37859) == 1 then
			return 37859
		elseif C_Item.GetItemCount(37860) == 1 then
			return 37860
		elseif C_Item.GetItemCount(37815) == 1 then
			return 37815
		end
	elseif zone.name == LibStub("AceLocale-3.0"):GetLocale("BeStride")["Zone.StormPeaks"] or zone.name == LibStub("AceLocale-3.0"):GetLocale("BeStride")["Zone.Icecrown"] or zone.name == LibStub("AceLocale-3.0"):GetLocale("BeStride")["Zone.SholazarBasin"] then
		if C_Item.GetItemCount(44221, false) > 0 then
			return 44221
		elseif C_Item.GetItemCount(44229, false) > 0 then
			return 44229
		end
	end
	
	return nil
end

function BeStride:CanUseTargetsMount()
	if self:IsClassicEra() then return false end
	if (not self:DBGet("settings.mount.copytargetmount")) then return false end
	if (self:MovementCheck() or not UnitExists("target")) then return false end

	local spellId, mountId, isUsable = self:GetKnownMountFromTarget()
	return isUsable
end