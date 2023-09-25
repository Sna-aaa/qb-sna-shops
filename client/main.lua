local QBCore = exports["qb-core"]:GetCoreObject()
local currentShop
local listen = false
local ShopPeds = {}
local ShopZones = {}

-- Functions
local function createBlips()
    local PlayerData = QBCore.Functions.GetPlayerData()

    for k, store in pairs(Config.Locations) do
        if store.showblip then
            local StoreBlip = AddBlipForCoord(store.coords.x, store.coords.y, store.coords.z)
            SetBlipSprite(StoreBlip, store.blipsprite)
            SetBlipScale(StoreBlip, store.blipscale)
            SetBlipDisplay(StoreBlip, 4)
            SetBlipColour(StoreBlip, store.blipcolor)
            SetBlipAsShortRange(StoreBlip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentSubstringPlayerName(store.label)
            EndTextCommandSetBlipName(StoreBlip)
        end
    end
end

local function createPeds()
    for k, store in pairs(Config.Locations) do
        local current = type(store.ped) == "number" and store.ped or joaat(store.ped)

        RequestModel(current)
        while not HasModelLoaded(current) do
            Wait(0)
        end

        ShopPeds[k] = CreatePed(0, current, store.coords.x, store.coords.y, store.coords.z-1, store.coords.w, false, false)
        TaskStartScenarioInPlace(ShopPeds[k], store.scenario, 0, true)
        FreezeEntityPosition(ShopPeds[k], true)
        SetEntityInvincible(ShopPeds[k], true)
        SetBlockingOfNonTemporaryEvents(ShopPeds[k], true)

        if Config.UseTarget then
            exports['qb-target']:AddTargetEntity(ShopPeds[k], {
                options = {
                    {
                        label = Lang:t("info.open_shop_target"),
                        icon = "fas fa-shopping-basket",
                        event = "qb-shops:client:OpenShop",
                        location = k,
                    }
                },
                distance = 2.0
            })
        end
    end
end

local function deletePeds()
    for _, v in pairs(ShopPeds) do
        DeletePed(v)
    end
end

local function listenForControl()
    while listen do
        if IsControlJustPressed(0, 38) then -- E
            exports["qb-core"]:KeyPressed()
            TriggerEvent("qb-shops:client:OpenShop")
            listen = false
            break
        end
        Wait(0)
    end
end

local function createZones()
    for k, shop in pairs(Config.Locations) do
        ShopZones[k] = {}
        ShopZones[k].zone = BoxZone:Create(
            shop.coords, 3, 3, {
                minZ = shop.coords.z - 1.5,
                maxZ = shop.coords.z + 2.0,
                name = k,
                debugPoly = false,
                heading = shop.coords.w
            })
        ShopZones[k].zonecombo = ComboZone:Create({ShopZones[k].zone}, {name = "combo"..k, debugPoly = false})
        ShopZones[k].zonecombo:onPlayerInOut(function(isPointInside)
            if isPointInside then
                currentShop = k
                exports["qb-core"]:DrawText(Lang:t("info.open_shop"))
                listen = true
                listenForControl()
            else
                currentShop = nil
                listen = false
                exports["qb-core"]:HideText()
            end
        end)
    end
end

local function openShop()
    if currentShop then
        QBCore.Functions.TriggerCallback('qb-shops:server:GetItems', function(ShopItems)
            TriggerServerEvent("inventory:server:OpenInventory", "shop", "Itemshop_" .. currentShop, ShopItems)
        end, currentShop)
    end
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    createBlips()
    createPeds()
    if not Config.UseTarget then
        createZones()
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    deletePeds()
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        createBlips()
        createPeds()
        if not Config.UseTarget then
            createZones()
        end
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        deletePeds()
    end
end)

RegisterNetEvent('qb-shops:client:OpenShop', function(data)
    if not currentShop then
        currentShop = data.location
    end
    openShop()
end)

RegisterNetEvent("qb-shops:client:UpdateShop", function(shop, itemData, amount)
    TriggerServerEvent("qb-shops:server:UpdateShopItems", shop, itemData, amount)
end)
