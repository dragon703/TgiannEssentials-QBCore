--[[
    - this script needs tgiann-core script to work, you can download the script from your keymaster account
      Start tgiann-core script after es_extented/qb-core script and before tgiann-* scripts
      Adjust the tgiann-core config file according to the framework you are using

    Docs: https://tgiann.gitbook.io/tgiann/scripts/tgiann-clothing
]]

tgiCoreExports = exports["tgiann-core"]
config = tgiCoreExports:getConfig()

config.lang = "en"

-- When set to false, players can save their outfits
-- Set this setting to false if you are not using tgiann-inventory or do not want clothes to be items
-- if you are using tgiann-inventory, make this and the Config.clothingAsItem setting in inventory the same
-- false version; https://youtu.be/IflmFDyMCnE?t=80
config.clothingAsItem = true

config.pedListEnable = false                     -- if true, the player can change the ped, change the ped list from "pedList.lua"
config.showClotheImg = true                      -- shows a picture of clothes in ui (https://docs.tgiann.com/scripts/tgiann-clothing/how-to-take-clothes-images)
config.fadeOutScreenWhenCreatingCharacter = true -- If true, the screen will fade out when the character creation menu is opened
config.fadeOutScreenWhenLoadingCharacter = true  -- If true, the screen will fade out when the character is loading

config.moneyType = "bank"

config.refreshSkin = {                  -- Command to refresh the character
    active = true,
    command = "refreshskin",            -- command name
    eventName = "tgiann-clothing:refreshSkin",
    rate = 2000,                        -- how many miliseconds after the player uses the command can he use it again
    deleteAttachedObjectWhenUsed = true -- when the player uses the refreshskin command, if there is an object attached to the character, it deletes it (prevents the probe in the hand from falling to the ground in some animations)
}

-- If one of the following masks is worn by the character, it will change the face type and prevent it from protruding beyond the mask.
-- If you have a mask removal command, add this export at the end of the command. https://docs.tgiann.com/scripts/tgiann-clothing/events-exports#checkmask
config.maskNumber = {
    man = { 266, 265, 263, 255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 237, 236, 234, 233, 232, 231, 230, 228, 227, 225, 224, 223, 222, 221, 220, 219, 214, 213, 212, 211, 205, 203, 200, 194, 193, 192, 191, 190, 189, 188, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 174, 173, 172, 171, 170, 168, 167, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 147, 146, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 119, 118, 117, 115, 113, 112, 110, 108, 106, 105, 104, 103, 102, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 35, 34, 33, 32, 31, 30, 29, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 10, 9, 8, 7, 6, 5, 4, 3, 2 },
    woman = { 248, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 223, 222, 221, 220, 219, 217, 216, 214, 213, 212, 211, 210, 209, 202, 198, 196, 195, 194, 193, 192, 191, 189, 188, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 174, 173, 172, 171, 170, 168, 167, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 147, 146, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 119, 118, 117, 115, 113, 112, 110, 108, 106, 105, 104, 103, 102, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 35, 34, 33, 32, 31, 30, 29, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1 }
}

config.creatingChar = {
    -- If you enter a value here, the clothes you set in the config/clotheList/'your cujstom shop name' folder will appear.
    -- By default, there is only a definition called 'global'.
    -- If you want to activate global, you should change this setting to clotheList = "global".
    clotheList = false,
    showClotheOptions = false,                          -- Allow the player to choose clothes when creating a character
    wait = 4000,                                        -- The time the menu opens after x milliseconds when the createFirstCharacter event is triggered
    coords = vector4(-795.57, 331.79, 200.42, 270.0),   -- Character creation location
    spawn = {
        spawnBack = true,                              -- If true then player will spawn back to last location after creating character (if u are using qb-apartment set this to true)
        coords = vector4(435.99, -644.68, 27.74, 86.23) -- Cord to spawn Player after character creation
    }
}

-- only works on clothing shops
config.clothingPrice = {
    enable = true, --if this is true, the clothing prices are set according to the ‘configs/clohingPrice’ file. if false, the default price is the one below (If clotheList is set for config.Stores, this setting is ignored.)
    defaultPrice = 10,
}

config.disableIdleCam = true -- If true it disables the Idle Cam
config.displayRadar = false  -- If true it closes the minimap when the clothing menu is opened and opens it again when the clothing menu is closed, if false the minimap is never touched

-- if you are using esx you may need to set this to true or trigger the createFirstCharacter event
-- if you used to use a different clothe script on your server and have an active(If you have old script skin data of old players) server, set this setting to true
-- config.autoOpenCreateMenu = false
-- config.autoOpenCreateMenu = true
config.autoOpenCreateMenu = true -- true | false > When this is true, the creation menu opens when the character load event is triggered and you have no skin data. false when the “createFirstCharacter” event is triggered

config.events = {
    qb = {
        onPlayerLoaded = "QBCore:Client:OnPlayerLoaded",
        createFirstCharacter = "qb-clothes:client:CreateFirstCharacter"
    },
    esx = {
        onPlayerLoaded = "esx:playerLoaded",
        createFirstCharacter = "tgiann-clothing:esx:createNew"
    }
}

-- You can adit clothing list from configs/clothingRoomsOutfits.lua
config.clothingRooms = {
    { outfitName = "police1", job = 'police',    maxDistance = 3, pressDistance = 3, coords = vector3(454.68, -990.89, 29.69), },
    { outfitName = "police1", job = 'ambulance', maxDistance = 3, pressDistance = 3, coords = vector4(342.47, -586.15, 43.32, 342.56), },
    { outfitName = "police1", job = 'police',    maxDistance = 3, pressDistance = 3, coords = vector3(314.76, 671.78, 14.73), },
    { outfitName = "police1", job = 'ambulance', maxDistance = 3, pressDistance = 3, coords = vector3(338.70, 659.61, 14.71), },
    { outfitName = "police1", job = 'ambulance', maxDistance = 3, pressDistance = 3, coords = vector3(-1098.45, 1751.71, 23.35), },
    { outfitName = "police1", job = 'police',    maxDistance = 3, pressDistance = 3, coords = vector3(-77.59, -129.17, 5.03), },
}

-- if clothingAsItem is true it opens an inventory for clothes, if false it opens a menu where you can change your registered clothes
-- Also u can edit openOutfitMenu function from client/editable.lua
config.outfitChangers = {
    { coords = vector3(-32.6164, -1112.1201, 26.4224), maxDistance = 3, pressDistance = 3 },
}

config.showArmor = {
    active = false,      -- If true Players will be able to wear an Armour if the Armour has a value
    defaultMan = {       -- If player has no specific armour on this will be shown as armour(Male)
        drawableId = 10, -- Vest/Armour/Bulletproof number on your clothings
        textureId = 0,
    },
    defaultFemale = {    -- If player has no specific armour on this will be shown as armour(Female)
        drawableId = 10, -- Vest/Armour/Bulletproof number on your clothings
        textureId = 1,
    }
}

config.blips = {
    clothing = {
        activeAfterLogin = true,                       -- If true, clothingshop blips will automatically turn on when player joins game
        event = "tgiann-clothing:clothing:blip:onOff", -- You can use this event to toggle the blips
        sprite = 73,
        color = 46,
        scale = 0.5
    },
    barber = {
        activeAfterLogin = true,                     -- If true, Barber blips will automatically turn on when player joins game
        event = "tgiann-clothing:barber:blip:onOff", -- You can use this event to toggle the blips
        sprite = 71,
        color = 51,
        scale = 0.5
    },
    tattoo = {
        activeAfterLogin = true,                     -- If true, Tattoo blips will automatically turn on when player joins game
        event = "tgiann-clothing:tattoo:blip:onOff", -- You can use this event to toggle the blips
        sprite = 75,
        color = 1,
        scale = 0.5
    },
}

config.maxValues = {
    mom = 45, -- if your are using this script(https://community-store.onx.gg/package/6187602) set to 91 (Default 45)
    dad = 45, -- if your are using this script(https://community-store.onx.gg/package/6187602) set to 91 (Default 45)
}

-- Command for players to tie up hair
config.hairClips = {
    command = "hair", -- Command name
    male = 12,        -- Default hair number
    female = 11,      -- Default hair number
}

-- default clothes that the character will be wearing when the character creation menu opens
config.creatingMenuClothe = {
    male = {
        tshirt_1 = 15,
        tshirt_2 = 0,
        torso_1 = 15,
        torso_2 = 0,
        arms = 15,
        arms_2 = 0,
        pants_1 = 21,
        pants_2 = 0,
        shoes_1 = 34,
        shoes_2 = 0,
    },
    female = {
        tshirt_1 = 15,
        tshirt_2 = 0,
        torso_1 = 15,
        torso_2 = 0,
        arms = 15,
        arms_2 = 0,
        pants_1 = 21,
        pants_2 = 0,
        shoes_1 = 35,
        shoes_2 = 0,
    }
}

-- the new clothe number to be changed when the character takes off clothes
config.naked = {
    male = {
        tshirt_1 = 15,
        tshirt_2 = 0,
        torso_1 = 15,
        torso_2 = 0,
        arms_1 = 15,
        arms_2 = 0,
        pants_1 = 61,
        pants_2 = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 }, -- random for color
        shoes_1 = 34,
        shoes_2 = 0
    },
    female = {
        tshirt_1 = 15,
        tshirt_2 = 0,
        torso_1 = 15,
        torso_2 = 0,
        arms_1 = 15,
        arms_2 = 0,
        pants_1 = 62,
        pants_2 = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 }, -- random for color
        shoes_1 = 35,
        shoes_2 = 0,
    }
}

-- bottom left animations in the menu
config.defaultAnimation = { dict = 'anim@amb@clubhouse@mini@darts@', name = 'wait_idle' }
config.animations = {
    {
        img = "anim_2",
        anim = {
            dict = "airforce@attention",
            name = "base"
        }
    },
    {
        img = "anim_4",
        anim = {
            dict = "anim@mp_corona_idles@female_b@idle_a",
            name = "idle_a"
        }
    },
    {
        img = "anim_1",
        anim = {
            dict = "rcmnigel1a",
            name = "base"
        }
    },
    {
        img = "anim_3",
        anim = {
            dict = "random@shop_tattoo",
            name = "_idle_a"
        }
    },
}

-- After Player created Character, these clothes will be worn by default (If config.creatingChar.showClotheOptions is true, this config will not work)
config.defaultClothe = {
    male = {
        ['tshirt_1'] = 15,
        ['tshirt_2'] = 0,
        ['torso_1'] = 34,
        ['torso_2'] = 0,
        ['arms'] = 0,
        ['arms_2'] = 0,
        ['pants_1'] = 12,
        ['pants_2'] = 0,
        ['shoes_1'] = 7,
        ['shoes_2'] = 2,
    },
    female = {
        ['tshirt_1'] = 14,
        ['tshirt_2'] = 0,
        ['torso_1'] = 3,
        ['torso_2'] = 2,
        ['arms'] = 3,
        ['arms_2'] = 0,
        ['pants_1'] = 0,
        ['pants_2'] = 0,
        ['shoes_1'] = 3,
        ['shoes_2'] = 0,
    }
}


config.clothelist = {}         -- Don't Edit
config.langs = {}              -- Don't Edit
config.blacklist = {}          -- Don't edit
config.defaultClothePrice = {} -- Don't edit

config.Stores = {
    {
        blip = true,
        shopType = "clothing",
        -- If you enter a value clotheList, the clothes you set in the config/clotheList/'your cujstom shop name' folder will appear.
        -- By default, there is only a definition called 'global'.
        -- If you want to activate global, you should change this setting to clotheList = "global".
        clotheList = false,
        blipCoords = vector2(1685.8996582031, 4830.1655273438),
        playerOwnable = {
            active = true,                                   -- if true players can buy the shop
            shopUniqueName = "clotheshop1",                  -- must be unique
            earnPercent = 0.1,                               -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(1695.4460, 4822.9800, 42.0631), -- Control menu coords
            price = 10000,                                   -- The rent price of the shop company
            rentMoneyPercent = 0.1,                          -- Again rental price (The value is multiplier (0.1 = 10%)) (percentage of the purchase price)
            rentPeriodDay = 3,                               -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                            -- Period in days that the player can renew his rent before it ends
        },
        jobs = {},
        zone = function()
            return PolyZone:Create({
                vector2(1685.8996582031, 4830.1655273438),
                vector2(1687.8397216797, 4815.4614257812),
                vector2(1699.8541259766, 4817.1440429688),
                vector2(1699.4880371094, 4832.0375976562)
            }, {
                name = "clotheshop1",
                minZ = 40.769010543823,
                maxZ = 43.76935005188
            })
        end
    },
    { -- Example for job clothes shop
        blip = true,
        shopType = "clothing",
        clotheList = false,
        blipCoords = vector2(1685.8996582031, 4830.1655273438),
        playerOwnable = {
            active = false,                                 -- if true players can buy the shop
            shopUniqueName = "clotheshop1",                 -- must be unique
            earnPercent = 0.1,                              -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(456.4530, -993.0711, 30.6896), -- Control menu coords
            price = 10000,                                  -- The rent price of the shop company
            rentMoneyPercent = 0.1,                         -- The value is multip
            rentPeriodDay = 3,                              -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                           -- Period in days that the player can renew his rent before it ends
        },
        jobs = { "police", "bcso" },                        -- Job List
        zone = function()
            return PolyZone:Create({
                vector2(460.60516357422, -993.90124511719),
                vector2(457.69662475586, -994.02923583984),
                vector2(458.59243774414, -990.0634765625),
                vector2(460.61224365234, -990.17608642578)
            }, {
                name = "job_clotheshop1",
                minZ = 29.769010543823,
                maxZ = 31.76935005188
            })
        end
    },
    {
        blip = true,
        shopType = "clothing",
        clotheList = "global",
        blipCoords = vector2(-710.86645507812, -165.10945129395),
        playerOwnable = {
            active = true,                                   -- if true players can buy the shop
            shopUniqueName = "clotheshop2",                  -- must be unique
            earnPercent = 0.1,                               -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(-708.3435, -152.3480, 37.4152), -- Control menu coords
            price = 10000,                                   -- The rent price of the shop company
            rentMoneyPercent = 0.1,                          -- The value is multip
            rentPeriodDay = 3,                               -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                            -- Period in days that the player can renew his rent before it ends
        },
        zone = function()
            return PolyZone:Create({
                vector2(-710.86645507812, -165.10945129395),
                vector2(-721.05480957031, -147.39605712891),
                vector2(-712.88800048828, -144.42813110352),
                vector2(-705.67138671875, -149.85957336426),
                vector2(-700.11590576172, -150.3238067627),
                vector2(-699.20428466797, -152.26374816895),
                vector2(-703.00360107422, -160.07594299316)
            }, {
                name = "clotheshop2",
                minZ = 35.769010543823,
                maxZ = 39.76935005188
            })
        end
    },
    {
        blip = true,
        shopType = "clothing",
        clotheList = false,
        blipCoords = vector2(-1200.5401611328, -784.46215820312),
        playerOwnable = {
            active = true,                                    -- if true players can buy the shop
            shopUniqueName = "clotheshop3",                   -- must be unique
            earnPercent = 0.1,                                -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(-1194.2552, -766.9985, 17.3159), -- Control menu coords
            price = 10000,                                    -- The rent price of the shop company
            rentMoneyPercent = 0.1,                           -- The value is multip
            rentPeriodDay = 3,                                -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                             -- Period in days that the player can renew his rent before it ends
        },
        zone = function()
            return PolyZone:Create({
                vector2(-1200.5401611328, -784.46215820312),
                vector2(-1201.7572021484, -782.82983398438),
                vector2(-1201.4144287109, -780.75720214844),
                vector2(-1199.4028320312, -779.26525878906),
                vector2(-1202.3199462891, -775.35479736328),
                vector2(-1204.2076416016, -777.01788330078),
                vector2(-1206.3055419922, -776.65362548828),
                vector2(-1207.6925048828, -774.86584472656),
                vector2(-1190.5494384766, -762.5751953125),
                vector2(-1187.3837890625, -761.298828125),
                vector2(-1184.9050292969, -765.91174316406),
                vector2(-1180.6319580078, -762.66363525391),
                vector2(-1179.4256591797, -764.33050537109),
                vector2(-1183.8443603516, -767.48773193359),
                vector2(-1182.3890380859, -769.48852539062)
            }, {
                name = "clotheshop3",
                minZ = 15.769010543823,
                maxZ = 20.76935005188
            })
        end
    },
    {
        blip = true,
        shopType = "clothing",
        clotheList = false,
        blipCoords = vector2(418.61126708984, -812.64849853516),
        playerOwnable = {
            active = true,                                  -- if true players can buy the shop
            shopUniqueName = "clotheshop4",                 -- must be unique
            earnPercent = 0.1,                              -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(427.1133, -806.0663, 29.4911), -- Control menu coords
            price = 10000,                                  -- The rent price of the shop company
            rentMoneyPercent = 0.1,                         -- The value is multip
            rentPeriodDay = 3,                              -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                           -- Period in days that the player can renew his rent before it ends
        },
        zone = function()
            return PolyZone:Create({
                vector2(418.61126708984, -812.64849853516),
                vector2(418.59124755859, -797.91107177734),
                vector2(431.97476196289, -797.9140625),
                vector2(431.94683837891, -804.32781982422),
                vector2(430.57855224609, -812.51507568359)
            }, {
                name = "clotheshop4",
                minZ = 28.769010543823,
                maxZ = 31.76935005188
            })
        end
    },
    {
        blip = true,
        shopType = "clothing",
        clotheList = false,
        blipCoords = vector2(-153.64421081543, -295.70358276367),
        playerOwnable = {
            active = true,                                   -- if true players can buy the shop
            shopUniqueName = "clotheshop5",                  -- must be unique
            earnPercent = 0.1,                               -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(-164.7215, -302.0441, 39.7333), -- Control menu coords
            price = 10000,                                   -- The rent price of the shop company
            rentMoneyPercent = 0.1,                          -- The value is multip
            rentPeriodDay = 3,                               -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                            -- Period in days that the player can renew his rent before it ends
        },
        zone = function()
            return PolyZone:Create({
                vector2(-153.64421081543, -295.70358276367),
                vector2(-160.25930786133, -315.05709838867),
                vector2(-168.00434875488, -310.84503173828),
                vector2(-168.84007263184, -301.81616210938),
                vector2(-171.67227172852, -297.27914428711),
                vector2(-170.97648620605, -295.20126342773),
                vector2(-162.83102416992, -293.0358581543)
            }, {
                name = "clotheshop5",
                minZ = 37.769010543823,
                maxZ = 40.76935005188
            })
        end
    },
    {
        blip = true,
        shopType = "clothing",
        clotheList = false,
        blipCoords = vector2(82.339218139648, -1401.2438964844),
        playerOwnable = {
            active = true,                                  -- if true players can buy the shop
            shopUniqueName = "clotheshop6",                 -- must be unique
            earnPercent = 0.1,                              -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(73.7905, -1393.1294, 29.3762), -- Control menu coords
            price = 10000,                                  -- The rent price of the shop company
            rentMoneyPercent = 0.1,                         -- The value is multip
            rentPeriodDay = 3,                              -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                           -- Period in days that the player can renew his rent before it ends
        },
        zone = function()
            return PolyZone:Create({
                vector2(82.339218139648, -1401.2438964844),
                vector2(68.465690612793, -1401.2481689453),
                vector2(69.020111083984, -1394.8198242188),
                vector2(70.234710693359, -1386.4799804688),
                vector2(82.314506530762, -1386.5581054688)
            }, {
                name = "clotheshop6",
                minZ = 28.769010543823,
                maxZ = 30.76935005188
            })
        end
    },
    {
        blip = true,
        shopType = "clothing",
        clotheList = false,
        blipCoords = vector2(-813.35583496094, -1076.3732910156),
        playerOwnable = {
            active = true,                                    -- if true players can buy the shop
            shopUniqueName = "clotheshop7",                   -- must be unique
            earnPercent = 0.1,                                -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(-823.0413, -1072.2094, 11.3281), -- Control menu coords
            price = 10000,                                    -- The rent price of the shop company
            rentMoneyPercent = 0.1,                           -- The value is multip
            rentPeriodDay = 3,                                -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                             -- Period in days that the player can renew his rent before it ends
        },
        zone = function()
            return PolyZone:Create({
                vector2(-813.35583496094, -1076.3732910156),
                vector2(-826.13665771484, -1083.7574462891),
                vector2(-832.94000244141, -1072.0089111328),
                vector2(-819.51422119141, -1066.0490722656)
            }, {
                name = "clotheshop7",
                minZ = 10.769010543823,
                maxZ = 12.76935005188
            })
        end
    },
    {
        blip = true,
        shopType = "clothing",
        clotheList = false,
        blipCoords = vector2(-1462.1739501953, -240.29034423828),
        playerOwnable = {
            active = true,                                    -- if true players can buy the shop
            shopUniqueName = "clotheshop8",                   -- must be unique
            earnPercent = 0.1,                                -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(-1449.2899, -238.5736, 49.8135), -- Control menu coords
            price = 10000,                                    -- The rent price of the shop company
            rentMoneyPercent = 0.1,                           -- The value is multip
            rentPeriodDay = 3,                                -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                             -- Period in days that the player can renew his rent before it ends
        },
        zone = function()
            return PolyZone:Create({
                vector2(-1462.1739501953, -240.29034423828),
                vector2(-1448.5577392578, -225.15390014648),
                vector2(-1443.1811523438, -231.98936462402),
                vector2(-1446.0865478516, -240.5563659668),
                vector2(-1444.9871826172, -245.91374206543),
                vector2(-1446.36328125, -247.39823913574),
                vector2(-1454.9477539062, -246.28150939941)
            }, {
                name = "clotheshop8",
                minZ = 48.769010543823,
                maxZ = 50.76935005188
            })
        end
    },
    {
        blip = true,
        shopType = "clothing",
        clotheList = false,
        blipCoords = vector2(-4.6165046691895, 6513.1479492188),
        playerOwnable = {
            active = true,                                -- if true players can buy the shop
            shopUniqueName = "clotheshop9",               -- must be unique
            earnPercent = 0.1,                            -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(5.6997, 6510.9980, 31.8778), -- Control menu coords
            price = 10000,                                -- The rent price of the shop company
            rentMoneyPercent = 0.1,                       -- The value is multip
            rentPeriodDay = 3,                            -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                         -- Period in days that the player can renew his rent before it ends
        },
        zone = function()
            return PolyZone:Create({
                vector2(-4.6165046691895, 6513.1479492188),
                vector2(6.1451058387756, 6523.1865234375),
                vector2(15.45094203949, 6513.1875),
                vector2(3.6462807655334, 6504.4868164062)
            }, {
                name = "clotheshop9",
                minZ = 30.769010543823,
                maxZ = 32.76935005188
            })
        end
    },
    {
        blip = true,
        shopType = "clothing",
        clotheList = false,
        blipCoords = vector2(612.39031982422, 2747.03125),
        playerOwnable = {
            active = true,                                  -- if true players can buy the shop
            shopUniqueName = "clotheshop10",                -- must be unique
            earnPercent = 0.1,                              -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(612.8135, 2762.8042, 42.0881), -- Control menu coords
            price = 10000,                                  -- The rent price of the shop company
            rentMoneyPercent = 0.1,                         -- The value is multip
            rentPeriodDay = 3,                              -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                           -- Period in days that the player can renew his rent before it ends
        },
        zone = function()
            return PolyZone:Create({
                vector2(612.39031982422, 2747.03125),
                vector2(611.64288330078, 2769.8024902344),
                vector2(616.61975097656, 2776.0617675781),
                vector2(618.40551757812, 2776.3037109375),
                vector2(621.25915527344, 2771.0454101562),
                vector2(623.86657714844, 2747.7705078125),
                vector2(622.12359619141, 2747.5361328125),
                vector2(620.52978515625, 2748.9265136719),
                vector2(620.33831787109, 2751.3830566406),
                vector2(615.68322753906, 2751.0974121094),
                vector2(615.84069824219, 2748.58984375),
                vector2(614.40972900391, 2747.0102539062)
            }, {
                name = "clotheshop10",
                minZ = 41.769010543823,
                maxZ = 43.76935005188
            })
        end
    },
    {
        blip = true,
        shopType = "clothing",
        clotheList = false,
        blipCoords = vector2(1188.3782958984, 2716.5703125),
        playerOwnable = {
            active = true,                                   -- if true players can buy the shop
            shopUniqueName = "clotheshop11",                 -- must be unique
            earnPercent = 0.1,                               -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(1197.0264, 2711.8413, 38.2226), -- Control menu coords
            price = 10000,                                   -- The rent price of the shop company
            rentMoneyPercent = 0.1,                          -- The value is multip
            rentPeriodDay = 3,                               -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                            -- Period in days that the player can renew his rent before it ends
        },
        zone = function()
            return PolyZone:Create({
                vector2(1188.3782958984, 2716.5703125),
                vector2(1202.9870605469, 2715.2487792969),
                vector2(1203.3488769531, 2703.0417480469),
                vector2(1188.3149414062, 2703.2392578125)
            }, {
                name = "clotheshop11",
                minZ = 37.769010543823,
                maxZ = 40.76935005188
            })
        end
    },
    {
        blip = true,
        shopType = "clothing",
        clotheList = false,
        blipCoords = vector2(-3172.2329101562, 1061.6895751953),
        playerOwnable = {
            active = true,                                    -- if true players can buy the shop
            shopUniqueName = "clotheshop12",                  -- must be unique
            earnPercent = 0.1,                                -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(-3169.2822, 1043.0983, 20.8632), -- Control menu coords
            price = 10000,                                    -- The rent price of the shop company
            rentMoneyPercent = 0.1,                           -- The value is multip
            rentPeriodDay = 3,                                -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                             -- Period in days that the player can renew his rent before it ends
        },
        zone = function()
            return PolyZone:Create({
                vector2(-3172.2329101562, 1061.6895751953),
                vector2(-3170.4267578125, 1060.9071044922),
                vector2(-3169.63671875, 1058.8791503906),
                vector2(-3170.6550292969, 1056.6370849609),
                vector2(-3166.3298339844, 1054.6983642578),
                vector2(-3165.3764648438, 1057.0301513672),
                vector2(-3163.3598632812, 1057.841796875),
                vector2(-3161.125, 1056.8330078125),
                vector2(-3172.5615234375, 1036.1121826172),
                vector2(-3178.787109375, 1033.0718994141),
                vector2(-3180.5993652344, 1033.8356933594),
                vector2(-3180.6806640625, 1039.7429199219)
            }, {
                name = "clotheshop12",
                minZ = 19.769010543823,
                maxZ = 21.76935005188
            })
        end
    },
    {
        blip = true,
        shopType = "clothing",
        clotheList = false,
        blipCoords = vector2(-1091.9829101562, 2709.6491699219),
        playerOwnable = {
            active = true,                                    -- if true players can buy the shop
            shopUniqueName = "clotheshop13",                  -- must be unique
            earnPercent = 0.1,                                -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(-1102.5118, 2711.6528, 19.1078), -- Control menu coords
            price = 10000,                                    -- The rent price of the shop company
            rentMoneyPercent = 0.1,                           -- The value is multip
            rentPeriodDay = 3,                                -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                             -- Period in days that the player can renew his rent before it ends
        },
        zone = function()
            return PolyZone:Create({
                vector2(-1091.9829101562, 2709.6491699219),
                vector2(-1103.0356445312, 2699.8571777344),
                vector2(-1111.9705810547, 2709.7937011719),
                vector2(-1107.1424560547, 2713.9892578125),
                vector2(-1100.1926269531, 2718.5329589844)
            }, {
                name = "clotheshop13",
                minZ = 18.769010543823,
                maxZ = 20.76935005188
            })
        end
    },
    {
        blip = true,
        shopType = "clothing",
        clotheList = false,
        blipCoords = vector2(122.8928527832, -205.94874572754),
        playerOwnable = {
            active = true,                                  -- if true players can buy the shop
            shopUniqueName = "clotheshop15",                -- must be unique
            earnPercent = 0.1,                              -- The value is multiplayer (0.1 = 10%) (the money spent by the player * earnPercent)
            coords = vector3(127.2634, -223.7855, 54.5578), -- Control menu coords
            price = 10000,                                  -- The rent price of the shop company
            rentMoneyPercent = 0.1,                         -- The value is multip
            rentPeriodDay = 3,                              -- Period in days that the players can rent company
            rentPayBeforeDay = 1,                           -- Period in days that the player can renew his rent before it ends
        },
        zone = function()
            return PolyZone:Create({
                vector2(122.8928527832, -205.94874572754),
                vector2(124.81025695801, -206.6634979248),
                vector2(125.71154785156, -208.57774353027),
                vector2(124.85503387451, -210.89176940918),
                vector2(129.23416137695, -212.50172424316),
                vector2(130.09338378906, -210.16854858398),
                vector2(132.03707885742, -209.27716064453),
                vector2(134.06098937988, -210.07257080078),
                vector2(124.37784576416, -231.36656188965),
                vector2(118.24362182617, -234.93994140625),
                vector2(116.407081604, -234.42546081543),
                vector2(115.91317749023, -228.45652770996)
            }, {
                name = "clotheshop15",
                minZ = 53.769010543823,
                maxZ = 55.76935005188
            })
        end
    },
    { -- unicorn
        blip = false,
        shopType = "clothing",
        clotheList = false,
        blipCoords = vector3(959.52716064453, -3061.8576660156, 5.9007654190063),
        zone = function()
            return PolyZone:Create({
                vector2(110.9681930542, -1305.9279785156),
                vector2(106.68984222412, -1308.396484375),
                vector2(102.05298614502, -1300.5065917969),
                vector2(107.52133178711, -1297.5291748047)
            }, {
                name = "unicorn",
                minZ = 27.769010543823,
                maxZ = 29.76935005188
            })
        end
    },
    {
        blip = true,
        shopType = "barber",
        blipCoords = vector2(-808.67687988281, -178.70150756836),
        zone = function()
            return PolyZone:Create({
                vector2(-808.67687988281, -178.70150756836),
                vector2(-807.02545166016, -181.61875915527),
                vector2(-809.30401611328, -182.96809387207),
                vector2(-808.05523681641, -185.14138793945),
                vector2(-819.75915527344, -193.23866271973),
                vector2(-825.87567138672, -182.23979187012)
            }, {
                name = "berber1",
            })
        end
    },
    {
        blip = true,
        shopType = "barber",
        blipCoords = vector2(138.24328613281, -1702.7807617188),
        zone = function()
            return PolyZone:Create({
                vector2(138.24328613281, -1702.7807617188),
                vector2(142.77433776855, -1706.4708251953),
                vector2(135.54319763184, -1714.9221191406),
                vector2(133.64506530762, -1713.1563720703),
                vector2(133.92269897461, -1712.0684814453),
                vector2(131.84210205078, -1710.2606201172)
            }, {
                name = "berber2",
            })
        end
    },
    {
        blip = true,
        shopType = "barber",
        blipCoords = vector2(-1277.8315429688, -1120.5123291016),
        zone = function()
            return PolyZone:Create({
                vector2(-1277.8315429688, -1120.5123291016),
                vector2(-1288.8289794922, -1120.5031738281),
                vector2(-1288.8167724609, -1117.9390869141),
                vector2(-1287.7214355469, -1117.4808349609),
                vector2(-1287.7330322266, -1114.7182617188),
                vector2(-1277.8419189453, -1114.7563476562)
            }, {
                name = "berber3",
            })
        end
    },
    {
        blip = true,
        shopType = "barber",
        blipCoords = vector2(1932.0532226562, 3736.1662597656),
        zone = function()
            return PolyZone:Create({
                vector2(1932.0532226562, 3736.1662597656),
                vector2(1937.5708007812, 3726.6799316406),
                vector2(1935.3822021484, 3725.3244628906),
                vector2(1934.3698730469, 3726.1408691406),
                vector2(1932.0354003906, 3724.7399902344),
                vector2(1926.896484375, 3733.2145996094)
            }, {
                name = "berber4",
            })
        end
    },
    {
        blip = true,
        shopType = "barber",
        blipCoords = vector2(1205.7321777344, -474.38525390625),
        zone = function()
            return PolyZone:Create({
                vector2(1205.7321777344, -474.38525390625),
                vector2(1206.3671875, -471.94644165039),
                vector2(1207.5393066406, -471.73193359375),
                vector2(1208.2751464844, -469.08966064453),
                vector2(1217.8385009766, -471.66714477539),
                vector2(1216.3311767578, -477.24276733398)
            }, {
                name = "berber5",
            })
        end
    },
    {
        blip = true,
        shopType = "barber",
        blipCoords = vector2(-34.027080535889, -145.63784790039),
        zone = function()
            return PolyZone:Create({
                vector2(-34.027080535889, -145.63784790039),
                vector2(-31.625919342041, -146.50546264648),
                vector2(-31.540845870972, -147.6526184082),
                vector2(-28.885417938232, -148.67314147949),
                vector2(-32.37495803833, -157.97094726562),
                vector2(-37.777011871338, -155.93859863281)
            }, {
                name = "berber6",
            })
        end
    },
    {
        blip = true,
        shopType = "barber",
        blipCoords = vector2(-272.98220825195, 6226.4267578125),
        zone = function()
            return PolyZone:Create({
                vector2(-272.98220825195, 6226.4267578125),
                vector2(-277.04840087891, 6222.3315429688),
                vector2(-284.99057006836, 6230.1166992188),
                vector2(-283.04922485352, 6231.9130859375),
                vector2(-281.93325805664, 6231.47265625),
                vector2(-280.00537109375, 6233.3740234375)
            }, {
                name = "berber7",
            })
        end
    },
    -- Tattoo
    {
        blip = true,
        shopType = "tattoo",
        blipCoords = vector2(1323.1323, -1652.5693),
        zone = function()
            return PolyZone:Create({
                vector2(1324.5218505859, -1648.1640625),
                vector2(1327.8626708984, -1652.2667236328),
                vector2(1321.3908691406, -1657.6013183594),
                vector2(1317.8269042969, -1653.3630371094)
            }, {
                name = "tattoo1",
                minZ = 51.275093078613,
                maxZ = 54.275787353516
            })
        end
    },
    {
        blip = true,
        shopType = "tattoo",
        blipCoords = vector2(-1155.5935, -1425.6444),
        zone = function()
            return PolyZone:Create({
                vector2(-1152.0222167969, -1421.8853759766),
                vector2(-1149.1357421875, -1426.2048339844),
                vector2(-1156.0126953125, -1431.0841064453),
                vector2(-1158.892578125, -1426.4283447266)
            }, {
                name = "tattoo2",
                minZ = 3.9544582366943,
                maxZ = 5.9544582366943
            })
        end
    },
    {
        blip = true,
        shopType = "tattoo",
        blipCoords = vector2(323.5614, 180.3143),
        zone = function()
            return PolyZone:Create({
                vector2(318.23831176758, 179.79042053223),
                vector2(320.03112792969, 184.85493469238),
                vector2(327.92684936523, 181.94296264648),
                vector2(325.45346069336, 177.08526611328)
            }, {
                name = "tattoo3",
                minZ = 102.58646392822,
                maxZ = 104.58646392822
            })
        end
    },
    {
        blip = true,
        shopType = "tattoo",
        blipCoords = vector2(323.5614, 180.3143),
        zone = function()
            return PolyZone:Create({
                vector2(-3169.5854492188, 1071.3017578125),
                vector2(-3174.2766113281, 1073.4243164062),
                vector2(-3170.97265625, 1081.0876464844),
                vector2(-3166.38671875, 1078.3684082031)
            }, {
                name = "tattoo4",
                minZ = 19.82915687561,
                maxZ = 21.829195022583
            })
        end
    },
    {
        blip = true,
        shopType = "tattoo",
        blipCoords = vector2(1863.7025, 3749.1926),
        zone = function()
            return PolyZone:Create({
                vector2(1867.6296386719, 3745.8969726562),
                vector2(1863.5424804688, 3743.4714355469),
                vector2(1859.6873779297, 3750.2116699219),
                vector2(1863.8907470703, 3752.5930175781)
            }, {
                name = "tattoo4",
                minZ = 32.031898498535,
                maxZ = 34.045967102051
            })
        end
    },
    {
        blip = true,
        shopType = "tattoo",
        blipCoords = vector2(-292.4569, 6199.4170),
        zone = function()
            return PolyZone:Create({
                vector2(-297.32165527344, 6201.064453125),
                vector2(-294.39959716797, 6204.2260742188),
                vector2(-288.97647094727, 6198.75390625),
                vector2(-292.31204223633, 6195.5590820312)
            }, {
                name = "tattoo5",
                minZ = 30.487543106079,
                maxZ = 32.658357620239
            })
        end
    },
}

config.warDropSaveData = { -- Don't Edit
    "tshirt_1", "tshirt_2", "torso_1", "torso_2", "decals_1", "decals_2", "arms", "arms_2", "pants_1", "pants_2", "shoes_1", "shoes_2", "mask_1", "mask_2", "bproof_1", "bproof_2", "chain_1", "chain_2", "helmet_1", "helmet_2", "glasses_1", "glasses_2", "watches_1", "watches_2", "bracelets_1", "bracelets_2", "ears_1", "ears_2", "bags_1", "bags_2", "hairOverlay"
}
