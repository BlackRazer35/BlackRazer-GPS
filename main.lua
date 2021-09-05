ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterCommand("gps", function(source, args)
    if Config.Civici[args[1]] ~= nil then
        SetNewWaypoint(Config.Civici[args[1]].x, Config.Civici[args[1]].y)
        ESX.ShowNotification('Hai impostato il GPS sul civico: '..args[1])
    else
        ESX.ShowNotification('Civico non esistente.')
    end
end)
