ESX.StartPayCheck = function()

	function payCheck()
		local xPlayers = ESX.GetPlayers()

		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			local job     = xPlayer.job.grade_name
			local salary  = 65000

			if salary > 0 then
				xPlayer.addMoney(65000)
				TriggerClientEvent('notifications', xPlayer.source, "#52e6af", "PAYCHECK", "Du hast deinen PayCheck in Höhe von 65000$ erhalten.")
			end

		end

		SetTimeout(Config.PaycheckInterval, payCheck)

	end

	SetTimeout(120000, payCheck)

end
