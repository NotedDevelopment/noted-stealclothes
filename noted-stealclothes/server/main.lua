local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('noted-stealclothes:server:TheftShoe', function(playerId)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local Receiver = QBCore.Functions.GetPlayer(playerId)
    if Receiver then 
        TriggerClientEvent("noted-stealclothes:client:StoleShoe", Receiver.PlayerData.source, Player.PlayerData.source)
    end
end)

RegisterNetEvent("noted-stealclothes:server:ChristmasSpirit", function(playerId)
    TriggerClientEvent("noted-stealclothes:client:christmasSpirit", playerId)
end)

RegisterNetEvent("noted-stealclothes:server:Complete", function(playerId, success)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local Receiver = QBCore.Functions.GetPlayer(playerId)
    if Receiver and success then
        Receiver.Functions.AddItem("weapon_shoe", 1)
        TriggerClientEvent('inventory:client:ItemBox', Receiver.PlayerData.source, QBCore.Shared.Items["weapon_shoe"], 'add')
        TriggerClientEvent("noted-stealclothes:client:ShoeStealSuccess", playerId)
    elseif Reciever then
        TriggerClientEvent('QBCore:Notify', playerId, 'You failed to steal someone else\'s shoes', 'error')
    end
end)

RegisterNetEvent('noted-stealclothes:server:theftClothing', function(playerId, cindex)
    TriggerClientEvent("noted-stealclothes:client:generalSteal", playerId, cindex)
end)