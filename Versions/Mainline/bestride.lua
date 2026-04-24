
function BeStride:Version_OnEnable()
end

function BeStride:IsClassicEra()
    return false
end

function BeStride:IsWrath()
    return false
end

function BeStride:IsCata()
    return false
end

function BeStride:IsMainline()
    return true
end

function BeStride:GetMountInfoBySpellID(id)
    local mountID = C_MountJournal.GetMountFromSpell(id)
    if mountID then
        return self:GetMountInfoByMountID(mountID)
    end
end

function BeStride:IsSpellUsable(spell)
    local isSecretValue = issecretvalue
    local canAccessValue = canaccessvalue

    if C_Spell.IsSpellUsable then
        local usable = C_Spell.IsSpellUsable(spell)
        if isSecretValue and isSecretValue(usable) and (not canAccessValue or not canAccessValue(usable)) then
            return false
        end
        return usable
    elseif C_Spell.IsUsableSpell then
        local usable = C_Spell.IsUsableSpell(spell)
        if isSecretValue and isSecretValue(usable) and (not canAccessValue or not canAccessValue(usable)) then
            return false
        end
        return usable
    elseif IsUsableSpell then
        local usable = IsUsableSpell(spell)
        if isSecretValue and isSecretValue(usable) and (not canAccessValue or not canAccessValue(usable)) then
            return false
        end
        return usable
    else
        return false
    end
end

function BeStride:GetSpellInfo(spell)
	local isSecretValue = issecretvalue
	local canAccessValue = canaccessvalue

	if C_Spell.GetSpellInfo then
		local info = C_Spell.GetSpellInfo(spell)
		if isSecretValue and isSecretValue(info) and (not canAccessValue or not canAccessValue(info)) then
			return nil
		end
		if info and type(info) == "table" then
			if isSecretValue and isSecretValue(info.name) and (not canAccessValue or not canAccessValue(info.name)) then
				return nil
			end
			if isSecretValue and isSecretValue(info.spellID) and (not canAccessValue or not canAccessValue(info.spellID)) then
				return nil
			end
			return { name = info.name, spellID = info.spellID }
		else
			local name,_,_,_,_,_,spellID = C_Spell.GetSpellInfo(spell)
			if isSecretValue and isSecretValue(name) and (not canAccessValue or not canAccessValue(name)) then
				return nil
			end
			if isSecretValue and isSecretValue(spellID) and (not canAccessValue or not canAccessValue(spellID)) then
				return nil
			end
			return { name = name, spellID = spellID }
		end
	elseif GetSpellInfo then
		local name,_,_,_,_,_,spellID = GetSpellInfo(spell)
		if isSecretValue and isSecretValue(name) and (not canAccessValue or not canAccessValue(name)) then
			return nil
		end
		if isSecretValue and isSecretValue(spellID) and (not canAccessValue or not canAccessValue(spellID)) then
			return nil
		end
		return { name = name, spellID = spellID }
	else
		return nil
	end
end

function BeStride:GetSpellOnCooldown(spell)
    local isSecretValue = issecretvalue
    local canAccessValue = canaccessvalue
    local canAccessTable = canaccesstable

    if C_Spell.GetSpellCooldown then
		local info = C_Spell.GetSpellCooldown(spell)
		if isSecretValue and isSecretValue(info) and (not canAccessValue or not canAccessValue(info)) then
			return true
		end
		if canAccessTable and not canAccessTable(info) then
			return true
		end
		if info and type(info) == "table" then
			local duration = info.duration
			if isSecretValue and isSecretValue(duration) and (not canAccessValue or not canAccessValue(duration)) then
				return true
			end
			return duration ~= 0
		else
			local onCooldown, _, _, _ = GetSpellCooldown(195072)
			if isSecretValue and isSecretValue(onCooldown) and (not canAccessValue or not canAccessValue(onCooldown)) then
				return true
			end
			return onCooldown ~= 0
		end
	elseif GetSpellCooldown then
		local onCooldown, _, _, _ = GetSpellCooldown(195072)
		if isSecretValue and isSecretValue(onCooldown) and (not canAccessValue or not canAccessValue(onCooldown)) then
			return true
		end
		return onCooldown ~= 0
	else
		return nil
	end
end

function BeStride:GetMountInfoByMountID(id)
    local creatureName,spellID,icon,active,isUsable,sourceType,isFavorite,isFactionSpecific,faction,hideOnChar,isCollected,mountID,isSteadyFlight = C_MountJournal.GetMountInfoByID(id)
    return {
        creatureName = creatureName,
        spellID = spellID,
        mountID = mountID,
        icon = icon,
        active = active,
        isUsable = isUsable,
        sourceType = sourceType,
        isFavorite = isFavorite,
        isFactionSpecific = isFactionSpecific,
        faction = faction,
        hideOnChar = hideOnChar,
        isCollected = isCollected,
        isSteadyFlight = isSteadyFlight
    }
end

function BeStride:GetMountInfoByIndex(index)
    return nil
end

function BeStride:GetKnownMountFromTarget()
    local isSecretValue = issecretvalue
    local canAccessValue = canaccessvalue
    local canAccessTable = canaccesstable

    -- Avoid secret-value errors when aura data is restricted in 12.0+.
    for i=1,40,1 do
        local info = C_UnitAuras.GetBuffDataByIndex("target", i)
        if isSecretValue and isSecretValue(info) and (not canAccessValue or not canAccessValue(info)) then
            return
        end
        if info == nil then return end
        if canAccessTable and not canAccessTable(info) then
            return
        end

        local spellId = info.spellId
        if isSecretValue and isSecretValue(spellId) and (not canAccessValue or not canAccessValue(spellId)) then
            return
        end

        local mountId = C_MountJournal.GetMountFromSpell(spellId)
        if mountId ~= nil then
            return self:isMountUsable(mountId)
        end
    end
end
