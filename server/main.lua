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
        local randAmount = math.random(10, 50)
        for k, v in pairs(Config.Locations[shop]["products"]) do 
            Config.Locations[shop]["products"][k].amount = Config.Locations[shop]["products"][k].amount + randAmount
        end
        TriggerClientEvent('qb-shops:client:RestockShopItems', -1, shop, randAmount)
    end
end)

QBCore.Functions.CreateCallback('qb-shops:server:getLicenseStatus', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local licenseTable = Player.PlayerData.metadata["licences"]
    local licenseItem = Player.Functions.GetItemByName("weaponlicense")
    cb(licenseTable.weapon, licenseItem)
end)

QBCore.Functions.CreateCallback('qb-shops:server:getStock', function(source, cb, shop)
    local retval = false
    exports.oxmysql:execute('SELECT * FROM shopitems WHERE store = ?', {shop}, function(result)
        if result[1] then
            cb(result)
        else
            cb(nil)
        end
    end)
end)