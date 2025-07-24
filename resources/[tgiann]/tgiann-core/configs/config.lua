--[[
    Start tgiann-core script after es_extented/qb-core/oxmysql script and before tgiann-* scripts
    Adjust the tgiann-core config file according to the framework you are using

    - If you are having any problems, please check the channels on my discord. If your problem is not resolved, open a ticket.
    - Discord: http://discord.gg/9SEg2WNf7Y
    - Docs: https://tgiann.gitbook.io/tgiann
    - Core Exports: https://docs.tgiann.com/scripts/tgiann-core
]]

config                           = {}
config.lang                      = "en" -- "en" - "tr"

config.locale                    = {
    timeLocale = "en-EN",
    moneyLocale = "en-EN",
    moneyCurrency = "USD",
}

-- number of online police needed to control
config.policeJobs                = {
    "police",
}

config.defaultColor              = { background = "#36ff9f", color = "#252525" } -- Changes the main hud color of tgiann scripts.
config.textUiLocation            = "right"                                       -- "left"   |   "right"
config.tgiannDrawText3D          = true                                          -- Use tgiann's drawtext3d function instead of QB and ESX
config.checkArtifactVersion      = true                                          -- Check the artifact version of the server
config.playerMaxOwnableLocations = 1                                             -- The maximum number of places the player can buy in scripts like garage, clothing

frameworkConfig                  = {
    esxScriptName = "es_extended",                  -- https://github.com/esx-framework/esx_core/tree/main/%5Bcore%5D/es_extended
    qbScriptName = "qb-core",                       -- https://github.com/qbcore-framework/qb-core
    qbxScriptName = "qbx_core",                     -- https://github.com/Qbox-project/qbx_core
    tgiannInventoryScriptName = "tgiann-inventory", -- https://store.tgiann.com/package/6251398
    oxInventoryScriptName = "ox_inventory",         -- https://github.com/overextended/ox_inventory
    qsInventoryScriptName = "qs-inventory",
    codemInventoryScriptName = "codem-inventory",
    origenInventoryScriptName = "origen_inventory",
    coreInventoryScriptName = "core_inventory",
    oxMysqlScriptName = "oxmysql", -- https://github.com/overextended/oxmysql
    esxService = "esx_service",    -- https://github.com/esx-framework/esx_service
    wasabiAmbulance = "wasabi_ambulance",
    oxTarget = "ox_target",
    qbTarget = "qb-target",
}

showClosestMenuKey               = "LMENU"

custom                           = {
    drawText = {
        active = false,
        ---@param uniqName string Unique name for the text
        ---@param button string Button text to display
        ---@param text string Text to display
        ---@diagnostic disable-next-line: unused-local
        openFunc = function(uniqName, button, text)
            lib.showTextUI(text)
        end,
        ---@param uniqName string Unique name for the text
        ---@diagnostic disable-next-line: unused-local
        closeFunc = function(uniqName)
            lib.hideTextUI()
        end
    },
    notif = {
        active = false, -- If you are using a different notify system, set active to true and edit the notify function
        ---@param msg string
        ---@param msgType? "primary" | "success" | "error"
        ---@param time? number
        ---@diagnostic disable-next-line: unused-local
        func = function(msg, msgType, time)
            lib.notify({
                title = 'Notification',
                description = msg,
                type = msgType or "primary",
                duration = time or 5000,
            })
        end
    },
    uiDrawText3D = {
        active = false,           -- If you want to use something other than tgiann 3d draw text, you can activate this. (When true, some problems may arise!!!)
        triggerEveryTick = false, -- When true, the openFunc function is triggered every tick.
        ---@param uniqName string Unique name for the text
        ---@param data [string, string][] -- Data to display, where each item is a table with two strings: [1] = key, [2] = text
        ---@param coord vector3
        ---@param screenPos { x: number, y: number }
        ---@diagnostic disable-next-line: unused-local
        openFunc = function(uniqName, data, coord, screenPos)
            local text = ""
            local length = #data
            for i = 1, length do
                text = ("[%s] %s%s"):format(data[i][1], data[i][2], i < length and " " or "")
            end
            lib.showTextUI(text)
        end,
        ---@param uniqName string Unique name for the text
        ---@diagnostic disable-next-line: unused-local
        closeFunc = function(uniqName)
            lib.hideTextUI()
        end
    },
    playerLoadedEvent = {
        active = false,         -- for core, the player loaded event needs to be triggered to load the ui data. if you are using a different loaded event than qb or esx, make it true and edit the event (-- also u can change event from client/main.lua)
        event = "playerSpawned" --https://docs.fivem.net/docs/resources/spawnmanager/events/playerSpawned/
    },
    deadReviveEvent = {
        active = false,                        -- if you are using a different ambulance script, make it true and edit the events (-- also u can change event from client/main.lua)
        deadEvent = "baseevents:onPlayerDied", -- https://docs.fivem.net/docs/resources/baseevents/events/onPlayerDied/
        reviveEvent = "playerSpawned",         -- https://docs.fivem.net/docs/resources/spawnmanager/events/playerSpawned/
    }
}

config.test                      = false -- Dont touch this
config.tgiannServer              = false -- Dont touch this

langs                            = {}

exports("getConfig", function()
    return config
end)
