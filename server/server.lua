ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('forcng:purchaseItem')
AddEventHandler('forcng:purchaseItem', function(item, cost)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getMoney() >= cost then
        xPlayer.removeMoney(cost)
        xPlayer.addInventoryItem(item, 1)
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Food Stand',
            description = 'You bought a ' .. item .. ' for $' .. cost,
            type = 'success',
            icon = 'fa-solid fa-umbrella-beach',
            position = 'center-right'
        })
    else
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Food Stand',
            description = 'Not enough money!',
            type = 'error',
            icon = 'fa-solid fa-umbrella-beach',
            position = 'center-right'
        })
    end
end)
