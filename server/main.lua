local QBCore = exports['qb-core']:GetCoreObject()

local function CheckLicense(licenseTable, licenseItem, licenseWeapon)
    if not Config.FirearmsLicenseCheck then
        return true
    end
    if not licenseWeapon then
        return true
    end
    if licenseWeapon == "weapon" and licenseTable.weapon and licenseItem then
        return true
    end
    return false
end

local function CheckJobGang(jobPlayer, jobItem)
    if not jobItem then
        return true
    end
    for k, job in pairs(jobItem) do
        if job == jobPlayer then
            return true
        end
    end
    return false
end

--Events
QBCore.Functions.CreateCallback('qb-shops:server:GetItems', function(source, cb, shop)
	local src = source
    local ShopItems = {}
    ShopItems.items = {}

    if Config.Locations[shop].type == "weapon" then
        local Player = QBCore.Functions.GetPlayer(src)
        local licenseTable = Player.PlayerData.metadata["licences"]
        local licenseItem = Player.Functions.GetItemByName("weaponlicense")
        ShopItems.label = "Ammunation"
        for k, weapon in pairs(Config.Weapons) do
            if CheckLicense(licenseTable, licenseItem, weapon.license) and 
               CheckJobGang(Player.PlayerData.gang["name"], weapon.requiredGang) and 
               CheckJobGang(Player.PlayerData.job["name"], weapon.requiredJob) then
                local slot = #ShopItems.items + 1
                ShopItems.items[slot] = {
                    name = k,
                    price = weapon.price,
                    amount = 10,
                    info = {},
                    type = "item",
                    slot = slot
                }
            end
        end
    elseif Config.Locations[shop].type == "shop" then
        ShopItems.label = "Shop"
        local result = MySQL.single.await('SELECT * FROM shopitems WHERE store = ?', { shop })
        if result then
            local inventory = json.decode(result.stock)
            for item, stock in pairs(inventory) do
                if Config.Items[item] then
                    if CheckJobGang(Player.PlayerData.gang["name"], Config.Items[item].requiredGang) and 
                       CheckJobGang(Player.PlayerData.job["name"], Config.Items[item].requiredJob) then
                        local slot = #ShopItems.items + 1
                        ShopItems.items[slot] = {
                            name = item,
                            price = Config.Items[item].price,
                            amount = stock,
                            info = {},
                            type = "item",
                            slot = slot
                        }
                    end
                end
            end
        end
    end
    cb(ShopItems)
end)

RegisterNetEvent('qb-shops:server:UpdateShopItems', function(shop, itemData, amount)
    if Config.Locations[shop].type ~= "weapon" then
        local result = MySQL.single.await('SELECT * FROM shopitems WHERE store = ?', { shop })
        if result then
            local inventory = json.decode(result.stock)
            for item, stock in pairs(inventory) do
                if item == itemData.name then
                    inventory[item] = stock - amount
                    if Config.Items[item].minStock and inventory[item] < Config.Items[item].minStock then
                        inventory[item] = Config.Items[item].minStock
                    end
                end
            end
            inventory = json.encode(inventory)
            MySQL.update('UPDATE shopitems SET stock = ? WHERE store = ?', { inventory, shop })
        end
    end
end)

RegisterNetEvent('qb-shops:server:RestockShopItems', function(shop)
    local result = MySQL.single.await('SELECT * FROM shopitems WHERE store = ?', { shop })
    if result then
        local randAmount = math.random(10, 50)
        local inventory = json.decode(result.stock)
        for item, stock in pairs(inventory) do
            inventory[item] = stock + randAmount
        end
        inventory = json.encode(inventory)
        MySQL.update('UPDATE shopitems SET stock = ? WHERE store = ?', { inventory, shop })
    end
end)
