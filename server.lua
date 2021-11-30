ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('server:tick')
AddEventHandler('server:tick', function(type)
    local player = ESX.GetPlayerFromId(source)
	local source = source
    local item = player.getQuantity('doge')
	
    if item > 0 then

	if type == "paket1" then
    player.addInventoryItem(Config.Paket1[1], 1)
    player.addInventoryItem(Config.Paket1[2], 1)
    player.addInventoryItem(Config.Paket1[3], 1)
    player.addInventoryItem(Config.Paket1[4], 1)
    player.removeInventoryItem('doge', 1)
    elseif type == "paket2" then
    player.addInventoryItem(Config.Paket2[1], 1)
    player.addInventoryItem(Config.Paket2[2], 1)
    player.addInventoryItem(Config.Paket2[3], 1)
    player.addInventoryItem(Config.Paket2[4], 1)
    player.removeInventoryItem('doge', 1)
    elseif type == "paket3" then
    player.addInventoryItem(Config.Paket3[1], 1)
    player.addInventoryItem(Config.Paket3[2], 1)
    player.addInventoryItem(Config.Paket3[3], 1)
    player.addInventoryItem(Config.Paket3[4], 1)
    player.removeInventoryItem('doge', 1)
    end
    end
    end)


    
    