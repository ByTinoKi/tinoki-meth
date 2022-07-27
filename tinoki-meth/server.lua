ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('tinoki-meth:collect')
AddEventHandler('tinoki-meth:collect', function()
	local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
	
	for k,v in ipairs(Config.Items)do
		if Config.RandomAmount then 
			local rAmount = math.random(Config.MinAmount, Config.MaxAmount)
			xPlayer.addInventoryItem(v.item, rAmount)
		else 
			xPlayer.addInventoryItem(v.item, v.amount)
		end
	end
end)

ESX.RegisterUsableItem('zip_bag', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('disc:close', source)
	TriggerClientEvent('tinoki-meth:pack', source)
end)

RegisterServerEvent('tinoki-meth:pack')
AddEventHandler('tinoki-meth:pack', function(stats)
	local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
		
	if stats == 1 then 
		local xMeth = xPlayer.getInventoryItem('item_meth').count
		if xMeth >= Config.MethToPack then
			xPlayer.removeInventoryItem('zip_bag', 1)
			xPlayer.removeInventoryItem('item_meth', Config.MethToPack)
			TriggerClientEvent('tinoki-meth:packing', src)
			Citizen.Wait(Config.PackingTime)
			xPlayer.addInventoryItem('packed_meth', 1)
		else
			TriggerClientEvent("pNotify:SendNotification", source, {text = (Config.Notification19), timeout = 5000})
		end
	end
end)

RegisterServerEvent('tinoki-meth:sellmeth')
AddEventHandler('tinoki-meth:sellmeth', function()
	local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
	local MethAmount = math.random(Config.MinMethSell, Config.MaxMethSell)
	
	local xMeth = xPlayer.getInventoryItem('packed_meth').count
	if xMeth > MethAmount then 
		xPlayer.removeInventoryItem("packed_meth", MethAmount)
		if Config.UseBlackMoney then 
			xPlayer.addAccountMoney('black_money', Config.MethPrice * MethAmount)
		else
			xPlayer.addMoney(Config.MethPrice * MethAmount)
		end
	else 
		TriggerClientEvent("pNotify:SendNotification", source, {text = (Config.Notification15), timeout = 5000})
	end 
end)