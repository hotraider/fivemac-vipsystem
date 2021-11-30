ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('server:tick')
AddEventHandler('server:tick', function(type)
    local player = ESX.GetPlayerFromId(source)
    local source = source
    local item = player.getQuantity('doge')
    
    if item > 0 then
     for i, v in pairs(Config.Paketler[type]) do
       player.addInventoryItem(v, 1)
     end
     player.removeInventoryItem('doge', 1)
    end
end)
