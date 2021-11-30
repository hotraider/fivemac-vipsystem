  ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
    end
end)

local SetDisplay = false

RegisterCommand("menu", function(source, args)
    SetDisplay(true, true)
end)


function SetDisplay(bool)
  display = bool
  SetNuiFocus(bool, bool)
  SendNUIMessage({
      type = "ui",
      status = bool,
  })
end

RegisterNUICallback('close', function()
  SetNuiFocus(false, false)
end)


RegisterNUICallback('weapon', function(data, cb)
		TriggerServerEvent('server:tick', data.type)
    print(json.encode(data))
end)