ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('server:tick')
AddEventHandler('server:tick', function(type)
    local player = ESX.GetPlayerFromId(source)
	local source = source
    local item = player.getQuantity('doge')
	
    if item > 0 then

	if type == "paket1" then

    for i=4,1,-1 do 
        
    player.addInventoryItem(Config.Paket1[i], 1)

    player.removeInventoryItem('doge', 1)
    
    end

    elseif type == "paket2" then
        
    for i=4,1,-1 do 

    player.addInventoryItem(Config.Paket2[i], 1)

    player.removeInventoryItem('doge', 1)

    end

    elseif type == "paket3" then

    for i=4,1,-1 do 

    player.addInventoryItem(Config.Paket3[i], 1)

    player.removeInventoryItem('doge', 1)
    end 
    end
    end
    end)

