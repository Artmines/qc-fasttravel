local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterServerEvent('qc-fasttravel:server:buyTicket')
AddEventHandler('qc-fasttravel:server:buyTicket', function(data)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local destination = data.destination
    local cost = data.cost
    local traveltime = data.traveltime
    local cashBalance = Player.PlayerData.money["cash"]
    if cashBalance >= cost then
        Player.Functions.RemoveMoney("cash", cost, "purchase-fasttravel")
        TriggerClientEvent('qc-fasttravel:client:doTravel', src, destination, traveltime)
    else 
        RSGCore.Functions.Notify(src, Lang:t('error.no_cash'), 'error')
    end
end)
