-- by dipo
-- bazinoom.ir
function setSvPassword(thePlayer, commandName, password)
	if exports.integration:isPlayerManager(thePlayer)	then
		outputChatBox("SYNTAX: /" .. commandName .. " [Password without spaces, empty to remove pw] - Set/remove server's password", thePlayer, 255, 194, 14)
		if password and string.len(password) > 0 then
			if setServerPassword(password) then
				exports.global:sendMessageToStaff("[SYSTEM] "..exports.global:getPlayerFullIdentity(thePlayer).." has set server's password to '"..password.."'.", true)
			end
		end
	end
end
addCommandHandler("setpass", setSvPassword, false, false)
addCommandHandler("setserverpw", setSvPassword, false, false)