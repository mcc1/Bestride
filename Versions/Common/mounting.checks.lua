function BeStride:MovementCheck()
	-- Checks Player Speed
	-- Returns: integer
	local speed = BeStride:SpeedCheck()
	if issecretvalue and issecretvalue(speed) and (not canaccessvalue or not canaccessvalue(speed)) then
		return true
	end
	if speed ~= 0 then
		return true
	else
		return false
	end
end

function BeStride:SpeedCheck()
	-- Checks Player Speed
	-- Returns: integer
	return GetUnitSpeed("player")
end