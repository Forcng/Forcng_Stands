CreateThread(function()
    for _, shops in pairs(Config.TheGuys) do
        RequestModel(shops.PedModel)
        while not HasModelLoaded(shops.PedModel) do Wait(10) end
        
        local ped = CreatePed(4, shops.PedModel, shops.PedPosition.x, shops.PedPosition.y, shops.PedPosition.z, shops.PedPosition.w, false, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)

        exports.ox_target:addLocalEntity(ped, {
            {
                label = 'Browse Items',
                icon = 'fas fa-store',
                onSelect = function()
                    if shops.Items then
                        TriggerEvent('forcng:openShop', shops.Items)
                    end
                end,
                distance = 2.5
            }
        })
    end
end)

RegisterNetEvent('forcng:openShop', function(products)
    local shopItems = {}
    for _, product in pairs(products) do
        table.insert(shopItems, {
            title = product.name,
            description = product.details,
            icon = product.icon,
            onSelect = function()
                TriggerServerEvent('forcng:purchaseItem', product.item, product.cost)
            end
        })
    end

    if Config.System == 'ox' then
        lib.registerContext({
            id = 'forcng_shop',
            title = 'Food Stand',
            options = shopItems
        })
        lib.showContext('forcng_shop')
    end
end)
