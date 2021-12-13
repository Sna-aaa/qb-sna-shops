Config = {}

Config.DeleteStock = true
Config.DeleteTime = 10      --In minutes

Config.Products = {
    ["normal"] = {
        ["tosti"] = {
            name = "tosti",
            price = 2,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        ["water_bottle"] = {
            name = "water_bottle",
            price = 2,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        ["kurkakola"] = {
            name = "kurkakola",
            price = 2,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        ["twerks_candy"] = {
            name = "twerks_candy",
            price = 2,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        ["snikkel_candy"] = {
            name = "snikkel_candy",
            price = 2,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        ["sandwich"] = {
            name = "sandwich",
            price = 2,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 6,
        },
        ["beer"] = {
            name = "beer",
            price = 7,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 7,
        },
        ["whiskey"] = {
            name = "whiskey",
            price = 10,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 8,
        },
        ["vodka"] = {
            name = "vodka",
            price = 12,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 9,
        },
    },
    ["hardware"] = {
        ["lockpick"] = {
            name = "lockpick",
            price = 200,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        ["weapon_wrench"] = {
            name = "weapon_wrench",
            price = 250,
            amount = 0,
            stock = 250,
            info = {},
            type = "item",
            slot = 2,
        },
        ["weapon_hammer"] = {
            name = "weapon_hammer",
            price = 250,
            amount = 0,
            stock = 250,
            info = {},
            type = "item",
            slot = 3,
        },
        ["repairkit"] = {
            name = "repairkit",
            price = 250,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 4,
            requiredJob = { "mechanic", "police" }
        },
        ["screwdriverset"] = {
            name = "screwdriverset",
            price = 350,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        ["phone"] = {
            name = "phone",
            price = 850,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 6,
        },
        ["radio"] = {
            name = "radio",
            price = 250,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 7,
        },
        ["binoculars"] = {
            name = "binoculars",
            price = 50,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 8,
        },
        ["firework1"] = {
            name = "firework1",
            price = 50,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 9,
        },
        ["firework2"] = {
            name = "firework2",
            price = 50,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 10,
        },
        ["firework3"] = {
            name = "firework3",
            price = 50,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 11,
        },
        ["firework4"] = {
            name = "firework4",
            price = 50,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 12,
        },
        ["fitbit"] = {
            name = "fitbit",
            price = 400,
            amount = 0,
            stock = 150,
            info = {},
            type = "item",
            slot = 13,
        },
        ["cleaningkit"] = {
            name = "cleaningkit",
            price = 150,
            amount = 0,
            stock = 150,
            info = {},
            type = "item",
            slot = 14,
        },
        ["advancedrepairkit"] = {
            name = "advancedrepairkit",
            price = 500,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 15,
            requiredJob = { "mechanic" }
        },        
        ["bandage"] = {
            name = "bandage",
            price = 100,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 16,
        },
    },
    ["coffeeshop"] = {
        ["joint"] = {
            name = "joint",
            price = 10,
            amount = 0,
            stock = 1000,
            info = {},
            type = "item",
            slot = 1,
        },
        ["weapon_poolcue"] = {
            name = "weapon_poolcue",
            price = 100,
            amount = 0,
            stock = 1000,
            info = {},
            type = "item",
            slot = 2,
        },
        ["weed_nutrition"] = {
            name = "weed_nutrition",
            price = 20,
            amount = 0,
            stock = 1000,
            info = {},
            type = "item",
            slot = 3,
        },
        ["empty_weed_bag"] = {
            name = "empty_weed_bag",
            price = 2,
            amount = 0,
            stock = 1000,
            info = {},
            type = "item",
            slot = 4,
        },
        ["rolling_paper"] = {
            name = "rolling_paper",
            price = 2,
            amount = 0,
            stock = 1000,
            info = {},
            type = "item",
            slot = 5,
        },
        ["lighter"] = {
            name = "lighter",
            price = 2,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 6,
        },
    },
    ["gearshop"] = {
        ["diving_gear"] = {
            name = "diving_gear",
            price = 2500,
            amount = 0,
            stock = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        ["jerry_can"] = {
            name = "jerry_can",
            price = 200,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 2,
        },
    },
    ["leisureshop"] = {
        ["parachute"] = {
            name = "parachute",
            price = 2500,
            amount = 0,
            stock = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        ["binoculars"] = {
            name = "binoculars",
            price = 50,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 2,
        },    
        ["diving_gear"] = {
            name = "diving_gear",
            price = 2500,
            amount = 0,
            stock = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        -- ["smoketrailred"] = {
        --     name = "smoketrailred",
        --     price = 250,
        --     amount = 0,
        --     stock = 50
        --     info = {},
        --     type = "item",
        --     slot = 4,
        -- },
    },
    ["weapons"] = {
        ["weapon_knife"] = {
            name = "weapon_knife",
            price = 250,
            amount = 250,
            stock = false,
            info = {},
            type = "item",
            slot = 1,
        },
        ["weapon_bat"] = {
            name = "weapon_bat",
            price = 250,
            amount = 250,
            stock = false,
            info = {},
            type = "item",
            slot = 2,
        },
        ["weapon_hatchet"] = {
            name = "weapon_hatchet",
            price = 250,
            amount = 250,
            stock = false,
            info = {},
            type = "item",
            slot = 3,
            requiredJob = { "mechanic", "police" }
        },
        ["weapon_pistol"] = {
            name = "weapon_pistol",
            price = 2500,
            amount = 5,
            stock = false,
            info = {},
            type = "item",
            slot = 4,
            requiresLicense = true
        },
        ["weapon_snspistol"] = {
            name = "weapon_snspistol",
            price = 1500,
            amount = 5,
            stock = false,
            info = {},
            type = "item",
            slot = 5,
            requiresLicense = true
        },
        ["weapon_vintagepistol"] = {
            name = "weapon_vintagepistol",
            price = 4000,
            amount = 5,
            stock = false,
            info = {},
            type = "item",
            slot = 6,
            requiresLicense = true
        },
        ["pistol_ammo"] = {
            name = "pistol_ammo",
            price = 250,
            amount = 250,
            stock = false,
            info = {},
            type = "item",
            slot = 7,
            requiresLicense = true
        },
    },
    ["coffeeplace"] = {
        ["coffee"] = {
            name = "coffee",
            price = 5,
            amount = 0,
            stock = 50,
            info = {},
            type = "item",
            slot = 1,
        },
    },
    ["casino"] = {
        ["casinochips"] = {
            name = "casinochips",
            price = 100,
            amount = 9999,
            stock = false,
            info = {},
            type = 'item',
            slot = 1,
        }
    },
}

Config.Locations = {
    ["beancoffee"] = {
        ["label"] = "Bean Machine Coffee",
        ["type"] = "misc",
        ["coords"] = {
            [1] = vector3(-633.72, 236.15, 81.88)
        },
        ["products"] = Config.Products["coffeeplace"],
        ["showblip"] = true,
        ["delivery"] = vector3(-634.96, 207.37, 73.89),
    },
    ["casino"] = {
        ["label"] = "Diamond Casino",
        ["type"] = "casino",
        ["coords"] = {
            [1] = vector3(948.3834, 34.21247, 71.839)
        },
        ["products"] = Config.Products["casino"],
        ["showblip"] = true,
        ["delivery"] = vector3(948.3834, 34.21247, 71.839),
    },
    ["ltdgasoline"] = {
        ["label"] = "LTD Gasoline",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(-48.44, -1757.86, 29.42),
            [2] = vector3(-47.23, -1756.58, 29.42)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-39.56, -1746.3, 29.21),
    },
    ["247supermarket"] = {
        ["label"] = "24/7 Supermarket",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(25.7, -1347.3, 29.49),
            [2] = vector3(25.7, -1344.99, 29.49)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(34.73, -1352.55, 29.32),
    },
    ["robsliquor6"] = {
        ["label"] = "Casino Bar",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(936.1185, 28.61719, 71.833)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["robsliquor"] = {
        ["label"] = "Rob's Liqour",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(-1222.77, -907.19, 12.32)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-1232.42, -902.6, 12.11),
    },
    ["ltdgasoline2"] = {
        ["label"] = "LTD Gasoline",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(-707.41, -912.83, 19.21),
            [2] = vector3(-707.32, -914.65, 19.21)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-702.87, -918.55, 19.01),        --done until here
    },
    ["robsliquor2"] = {
        ["label"] = "Rob's Liqour",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(-1487.7, -378.53, 40.16)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["ltdgasoline3"] = {
        ["label"] = "LTD Gasoline",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(-1820.33, 792.66, 138.1),
            [2] = vector3(-1821.55, 793.98, 138.1)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["robsliquor3"] = {
        ["label"] = "Rob's Liqour",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(-2967.79, 391.64, 15.04)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["247supermarket2"] = {
        ["label"] = "24/7 Supermarket",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(-3038.71, 585.9, 7.9),
            [2] = vector3(-3041.04, 585.11, 7.9)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["247supermarket3"] = {
        ["label"] = "24/7 Supermarket",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(-3241.47, 1001.14, 12.83),
            [2] = vector3(-3243.98, 1001.35, 12.83)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["247supermarket4"] = {
        ["label"] = "24/7 Supermarket",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(1728.66, 6414.16, 35.03),
            [2] = vector3(1729.72, 6416.27, 35.03)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["247supermarket5"] = {
        ["label"] = "24/7 Supermarket",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(1697.99, 4924.4, 42.06),
            [2] = vector3(1699.44, 4923.47, 42.06)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["247supermarket6"] = {
        ["label"] = "24/7 Supermarket",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(1961.48, 3739.96, 32.34),
            [2] = vector3(1960.22, 3742.12, 32.34)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["robsliquor4"] = {
        ["label"] = "Rob's Liqour",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(1165.28, 2709.4, 38.15)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["247supermarket7"] = {
        ["label"] = "24/7 Supermarket",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(547.79, 2671.79, 42.15),
            [2] = vector3(548.1, 2669.38, 42.15)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["247supermarket8"] = {
        ["label"] = "24/7 Supermarket",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(2679.25, 3280.12, 55.24),
            [2] = vector3(2677.13, 281.38, 55.24)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["247supermarket9"] = {
        ["label"] = "24/7 Supermarket",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(2557.94, 382.05, 108.62),
            [2] = vector3(2555.53, 382.18, 108.62)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["delvecchioliquor"] = {
        ["label"] = "Del Vecchio Liquor",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(-159.36, 6321.59, 31.58),
            [2] = vector3(-160.66, 6322.85, 31.58)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["donscountrystore"] = {
        ["label"] = "Don's Country Store",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(161.41, 6640.78, 31.69),
            [2] = vector3(163.04, 6642.45, 31.70)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["ltdgasoline4"] = {
        ["label"] = "LTD Gasoline",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(1163.7, -323.92, 69.2),
            [2] = vector3(1163.4, -322.24, 69.2)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["robsliquor5"] = {
        ["label"] = "Rob's Liqour",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(1135.66, -982.76, 46.41)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["247supermarket10"] = {
        ["label"] = "24/7 Supermarket",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(373.55, 325.56, 103.56),
            [2] = vector3(374.29, 327.9, 103.56)
        },
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["hardware"] = {
        ["label"] = "Hardware Store",
        ["type"] = "hardware",
        ["coords"] = {
            [1] = vector3(45.55, -1749.01, 29.6)
        },
        ["products"] = Config.Products["hardware"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["hardware2"] = {
        ["label"] = "Hardware Store",
        ["type"] = "hardware",
        ["coords"] = {
            [1] = vector3(2747.8, 3472.86, 55.67)
        },
        ["products"] = Config.Products["hardware"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["hardware3"] = {
        ["label"] = "Hardware Store",
        ["type"] = "hardware",
        ["coords"] = {
            [1] = vector3(-421.84, 6136.09, 31.78)
        },
        ["products"] = Config.Products["hardware"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },   
    ["coffeeshop"] = {
        ["label"] = "Superfly",
        ["type"] = "hardware",
        ["coords"] = {
            [1] = vector3(-1172.43, -1572.24, 4.66)
        },
        ["products"] = Config.Products["coffeeshop"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["ammunation1"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = {
            [1] = vector3(-662.1, -935.3, 21.8)
        },
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["delivery"] = false,
    },
    ["ammunation2"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = {
            [1] = vector3(810.2, -2157.3, 29.6)
        },
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["delivery"] = false,
    },
    ["ammunation3"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = {
            [1] = vector3(1693.4, 3759.5, 34.7)
        },
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["delivery"] = false,
    },
    ["ammunation4"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = {
            [1] = vector3(-330.2, 6083.8, 31.4)
        },
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["delivery"] = false,
    },
    ["ammunation5"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = {
            [1] = vector3(252.3, -50.0, 69.9)
        },
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["delivery"] = false,
    },
    ["ammunation6"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = {
            [1] = vector3(22.0, -1107.2, 29.8)
        },
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["delivery"] = false,
    },
    ["ammunation7"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = {
            [1] = vector3(2567.6, 294.3, 108.7)
        },
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["delivery"] = false,
    },
    ["ammunation8"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = {
            [1] = vector3(-1117.5, 2698.6, 18.5)
        },
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["delivery"] = false,
    },
    ["ammunation9"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = {
            [1] = vector3(842.4, -1033.4, 28.1)
        },
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["delivery"] = false,
    },
    ["seaword1"] = {
        ["label"] = "Sea Word",
        ["type"] = "misc",
        ["coords"] = {
            [1] = vector3(-1686.9, -1072.23, 13.15)
        },
        ["products"] = Config.Products["gearshop"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
    ["leisureshop"] = {
        ["label"] = "Leisure Shop",
        ["type"] = "misc",
        ["coords"] = {
            [1] = vector3(-1505.91, 1511.78, 115.29)
        },
        ["products"] = Config.Products["leisureshop"],
        ["showblip"] = true,
        ["delivery"] = vector3(-633.72, 236.15, 81.88),
    },
}
