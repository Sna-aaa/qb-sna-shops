local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-shops:server:UpdateShopItems', function(shop, itemData, amount)
    exports.oxmysql:execute('SELECT * FROM shopitems WHERE store = ? and item = ?', {shop, Config.Locations[shop]["products"][itemData.slot].name}, function(result)
        if result[1] then
            local sto = result[1].stock - amount
            exports.oxmysql:execute('UPDATE shopitems SET stock = ? WHERE store = ? AND item = ?', { sto, shop, Config.Locations[shop]["products"][itemData.slot].name })
        else
            Config.Locations[shop]["products"][itemData.slot].amount =  Config.Locations[shop]["products"][itemData.slot].amount - amount
            if Config.Locations[shop]["products"][itemData.slot].amount <= 0 then 
                Config.Locations[shop]["products"][itemData.slot].amount = 0
            end
        end
    end)
    TriggerClientEvent('qb-shops:client:SetShopItems', -1, shop, Config.Locations[shop]["products"])
end)

RegisterNetEvent('qb-shops:server:RestockShopItems', function(shop)
    if Config.Locations[shop]["products"] ~= nil then 
        local randAmount = 0                                        --math.random(10, 50)
        for k, v in pairs(Config.Locations[shop]["products"]) do 
            Config.Locations[shop]["products"][k].amount = Config.Locations[shop]["products"][k].amount + randAmount
        end
        TriggerClientEvent('qb-shops:client:RestockShopItems', -1, shop, randAmount)
    end
end)

RegisterNetEvent('qb-sna-shops:server:RestockShopStocks', function(shop, vehicle)
    local playersource = source
    local Player = QBCore.Functions.GetPlayer(source)
    exports.oxmysql:execute('SELECT * FROM shopitems WHERE store = ?', {shop}, function(result)
        if result[1] then
            local resulttrunk = exports.oxmysql:scalarSync('SELECT items FROM trunkitems WHERE plate = ?', {vehicle})
            if resulttrunk then
                local trunkItems = json.decode(resulttrunk)
                for i = 1, #result do
                    for k = 1, #trunkItems do
                        if result[i].item == trunkItems[k].name then
                            local manque = Config.Locations[shop]["products"][result[i].item].stock - result[i].stock
                            local sto
                            local amou
                            if manque <= trunkItems[k].amount then
                                sto = Config.Locations[shop]["products"][result[i].item].stock
                                amou = Config.Locations[shop]["products"][result[i].item].price * manque
                                trunkItems[k].amount = trunkItems[k].amount - manque
                                TriggerEvent('qb-bossmenu:server:addAccountMoney', Player.PlayerData.job.name, amou)
                            else
                                sto = result[i].stock + trunkItems[k].amount
                                amou = Config.Locations[shop]["products"][result[i].item].price * trunkItems[k].amount
                                trunkItems[k] = nil
                                TriggerEvent('qb-bossmenu:server:addAccountMoney', Player.PlayerData.job.name, amou)
                            end
                            exports.oxmysql:execute('UPDATE shopitems SET stock = ? WHERE store = ? AND item = ?', { sto, shop, result[i].item })
                        end
                    end
                end 
                exports.oxmysql:execute('UPDATE trunkitems SET items = ? WHERE plate = ?', { json.encode(trunkItems), vehicle })
                TriggerClientEvent("qb-sna-shops:client:RestockDone", playersource)
            end    
        end
    end)
end)

QBCore.Functions.CreateCallback('qb-shops:server:getLicenseStatus', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local licenseTable = Player.PlayerData.metadata["licences"]
    local licenseItem = Player.Functions.GetItemByName("weaponlicense")
    cb(licenseTable.weapon, licenseItem)
end)

QBCore.Functions.CreateCallback('qb-sna-shops:server:getStock', function(source, cb, shop)
    local retval = false
    exports.oxmysql:execute('SELECT * FROM shopitems WHERE store = ?', {shop}, function(result)
        if result[1] then
            cb(result)
        else
            cb(nil)
        end
    end)
end)

QBCore.Functions.CreateCallback('qb-sna-shops:server:getGlobalStock', function(source, cb)
    local globalStock = {}
    exports.oxmysql:execute('SELECT * FROM shopitems', function(result)
        if result[1] then
            for _, shopitem in pairs(result) do
                for loc, locdata in pairs(Config.Locations) do
                    if loc == shopitem.store then
                        local found = false
                        for i = 1, #globalStock do
                            if shopitem.item == globalStock[i].item then
                                found = i
                            end
                        end
                        local missing = locdata.products[shopitem.item].stock - shopitem.stock
                        if found then
                            globalStock[found].amount = globalStock[found].amount + missing
                        else
                            globalStock[#globalStock+1] = { item = shopitem.item, amount = missing }
                        end
                    end
                end
            end
            cb(globalStock)
        end
    end)
end)

CreateThread(function()
    while true do
        Wait(1000 * 60 * Config.DeleteTime)
        if Config.DeleteStock then
            exports.oxmysql:execute('SELECT * FROM shopitems', function(result)
                if result[1] then
                    for _, shopitem in pairs(result) do
                        if shopitem.stock > 1 then
                            shopitem.stock = shopitem.stock - 1
                            exports.oxmysql:execute('UPDATE shopitems SET stock = ? WHERE store = ? AND item = ?', { shopitem.stock, shopitem.store, shopitem.item })
                        end
                    end
                end
            end)    
        end
    end
end)