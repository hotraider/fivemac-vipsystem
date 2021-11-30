ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('server:tick')
AddEventHandler('server:tick', function(type,para)
    local player = ESX.GetPlayerFromId(source)
    local source = source
    local item = player.getQuantity('doge')


    if player.getQuantity('doge') >= para then
        for i, v in pairs(Config.Paketler[type]) do
          player.addInventoryItem(v, 1)
        end
        player.removeInventoryItem('doge', para)
      else 
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Yetersiz Coin.' } )
      end 
end)
