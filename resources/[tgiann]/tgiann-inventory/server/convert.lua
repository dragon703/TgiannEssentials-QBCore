-- with this command you can integrate your qb inventories into the new system
-- if you write a code for different inventories please share it with us
-- Commands only available from cmd/live consol

local function convertItemsFile()
    local addedAnyItems = false
    if config.framework == "qb" then
        local QBCore = exports['qb-core']:GetCoreObject({ "Shared" })
        local items = QBCore.Shared.Items
        if items and table.type(items) ~= 'empty' then
            for k, item in pairs(items) do
                if type(item) == 'table' then
                    item.name = tgiCore.trim(string.lower(item.name or k))
                    if not string.find(item.name, "weapon_") and not itemsData[item.name] then
                        item.type = item.type or 'item'
                        item.image = item.image or item.name .. ".webp"
                        item.unique = item.unique or false
                        item.useable = item.useable or false
                        item.shouldClose = item.shouldClose or false
                        item.description = item.description or ""
                        itemsData[item.name] = item
                        addedAnyItems = true
                    end
                end
            end
        end
    elseif config.framework == "esx" then
        local items = MySQL.query.await("SELECT * FROM items")
        if items and table.type(items) ~= 'empty' then
            for _, item in pairs(items) do
                item.name = tgiCore.trim(string.lower(item.name))
                if not string.find(item.name, "weapon_") and not itemsData[item.name] then
                    itemsData[item.name] = {
                        name = item.name, label = item.label, weight = item.weight, type = 'item', image = item.name .. '.webp', unique = false, useable = true, shouldClose = true, description = ''
                    }
                    addedAnyItems = true
                end
            end
        end
    end

    if not addedAnyItems then
        return tgiCore.DebugLog('No items added to items.lua file! Your tgiann-inventory items file already converted!')
    end

    local fileContent = "itemsData = " .. tgiCore.SerializeTable(itemsData)
    SaveResourceFile("tgiann-inventory", 'items/items.lua', fileContent, -1)
    if config.framework == "qb" then
        tgiCore.DebugLog('Your items have been copied from the QBCore.Shared.Items! You should restart the resource to load the new items! You can edit your items from items/items.lua file.')
    else
        tgiCore.DebugLog('Your items have been copied from the items database! You should restart the resource to load the new items! You can edit your items from items/items.lua file.')
    end
end

local function convertItems(items)
    if not items then return "[]" end
    items = json.decode(items)
    if not items then return "[]" end
    for _, itemData in pairs(items) do
        if itemData then
            itemData.info = itemData.metadata or itemData.info
            itemData.amount = itemData.count or itemData.amount
            if string.find(itemData.name, "weapon_") then itemData.info = nil end
        end
    end
    return json.encode(items)
end

local function checkTableExist(table)
    return MySQL.single.await("SHOW TABLES LIKE ?", { table })
end

RegisterCommand(config.commands.convert.convertItemsFile, function(source)
    if source > 0 then return tgiCore.DebugErrorLog("Pls use on server cmd") end
    convertItemsFile()
end)

-- Qb Inventory
RegisterCommand(config.commands.convert.convertqb, function(source)
    if source > 0 then return tgiCore.DebugErrorLog("Pls use on server cmd") end

    local newQb = checkTableExist("inventories")
    if newQb then
        local result = MySQL.query.await('SELECT * FROM inventories')
        if result and #result > 0 then
            for i = 1, #result do
                local inventory = result[i]
                local items = inventory.items
                local identifier = inventory.identifier
                if identifier:find('trunk-') then
                    MySQL.query.await('INSERT INTO `tgiann_inventory_trunkitems` (plate, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                        string.gsub(identifier, "trunk-", ""), items
                    })
                elseif identifier:find('glovebox-') then
                    MySQL.query.await('INSERT INTO `tgiann_inventory_gloveboxitems` (plate, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                        string.gsub(identifier, "glovebox-", ""), items
                    })
                else
                    MySQL.query.await('INSERT INTO `tgiann_inventory_stashitems` (stash, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                        identifier, items
                    })
                end
            end
        end
        tgiCore.DebugLog("New Qb inventories converted")
    else
        local response = MySQL.query.await('SELECT * FROM `stashitems`')
        if response and next(response) then
            for i = 1, #response do
                MySQL.query.await('INSERT INTO `tgiann_inventory_stashitems` (stash, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                    response[i].stash, response[i].items
                })
            end
            tgiCore.DebugLog("stashitems converted")
        end

        local response = MySQL.query.await('SELECT * FROM `trunkitems`')
        if response and next(response) then
            for i = 1, #response do
                MySQL.query.await('INSERT INTO `tgiann_inventory_trunkitems` (plate, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                    response[i].plate, response[i].items
                })
            end
            tgiCore.DebugLog("trunkitems converted")
        end

        local response = MySQL.query.await('SELECT * FROM `gloveboxitems`')
        if response and next(response) then
            for i = 1, #response do
                MySQL.query.await('INSERT INTO `tgiann_inventory_gloveboxitems` (plate, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                    response[i].plate, response[i].items
                })
            end
            tgiCore.DebugLog("gloveboxitems converted")
        end
    end

    if checkTableExist("players") then
        local response = MySQL.query.await('SELECT citizenid, inventory FROM `players`')
        if response and next(response) then
            for i = 1, #response do
                if response[i].inventory then
                    MySQL.query.await('INSERT INTO `tgiann_inventory_player` (citizenid, inventory, clotheinventory) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE inventory = VALUES(inventory), clotheinventory = VALUES(clotheinventory)', {
                        response[i].citizenid, response[i].inventory, "[]"
                    })
                end
            end
            tgiCore.DebugLog("Player inventorys converted")
        end
    end

    convertItemsFile()

    tgiCore.DebugLog("Finished")
end)

-- Ox Inventory
RegisterCommand(config.commands.convert.convertox, function(source)
    if source > 0 then return tgiCore.DebugErrorLog("Pls use on server cmd") end
    if not checkTableExist("ox_inventory") then
        return tgiCore.DebugErrorLog("Ox Inventory not found")
    end

    local response = MySQL.query.await('SELECT name, data FROM `ox_inventory`')
    if response and next(response) then
        for i = 1, #response do
            local owner = response[i].owner or ""
            MySQL.query.await('INSERT INTO `tgiann_inventory_stashitems` (stash, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                response[i].name .. "_" .. owner, convertItems(response[i].data)
            })
            if response[i].owner then
                tgiCore.DebugWarningLog(string.format("%s Converted but u need the edit open event! When opening the stash you need to send the player id in the stash name! Example: TriggerServerEvent('inventory:server:OpenInventory', 'stash', %s_PlayerData.citizenid)", response[i].name, response[i].name))
            end
        end
        tgiCore.DebugLog("stashitems converted")
    end

    if config.framework == "qb" then
        local response = MySQL.query.await('SELECT glovebox, trunk, plate FROM `player_vehicles`')
        if response and next(response) then
            for i = 1, #response do
                MySQL.query.await('INSERT INTO `tgiann_inventory_gloveboxitems` (plate, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                    response[i].plate, convertItems(response[i].glovebox)
                })
                MySQL.query.await('INSERT INTO `tgiann_inventory_trunkitems` (plate, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                    response[i].plate, convertItems(response[i].trunk)
                })
            end
            tgiCore.DebugLog("gloveboxitems and trunkitems converted")
        end
    else
        local response = MySQL.query.await('SELECT glovebox, trunk, plate FROM `owned_vehicles`')
        if response and next(response) then
            for i = 1, #response do
                MySQL.query.await('INSERT INTO `tgiann_inventory_gloveboxitems` (plate, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                    response[i].plate, convertItems(response[i].glovebox)
                })
                MySQL.query.await('INSERT INTO `tgiann_inventory_trunkitems` (plate, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                    response[i].plate, convertItems(response[i].trunk)
                })
            end
            tgiCore.DebugLog("gloveboxitems and trunkitems converted")
        end
    end

    if config.framework == "qb" then
        local response = MySQL.query.await('SELECT citizenid, inventory  FROM `players`')
        if response and next(response) then
            for i = 1, #response do
                if response[i].inventory then
                    MySQL.query.await('INSERT INTO `tgiann_inventory_player` (citizenid, inventory, clotheinventory) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE inventory = VALUES(inventory), clotheinventory = VALUES(clotheinventory)', {
                        response[i].citizenid, convertItems(response[i].inventory), "[]"
                    })
                end
            end
            tgiCore.DebugLog("Player inventorys converted")
        end
    else
        local response = MySQL.query.await('SELECT identifier, inventory  FROM `users`')
        if response and next(response) then
            for i = 1, #response do
                if response[i].inventory then
                    MySQL.query.await('INSERT INTO `tgiann_inventory_player` (citizenid, inventory, clotheinventory) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE inventory = VALUES(inventory), clotheinventory = VALUES(clotheinventory)', {
                        response[i].identifier, convertItems(response[i].inventory), "[]"
                    })
                end
            end
            tgiCore.DebugLog("Player inventorys converted")
        end
    end

    tgiCore.DebugLog("Finished")
end)

-- qs_inventory
RegisterCommand(config.commands.convert.convertqsinv, function(source)
    if source > 0 then return tgiCore.DebugErrorLog("Pls use on server cmd") end

    local response = MySQL.query.await('SELECT * FROM `inventory_stash`')
    if response and next(response) then
        for i = 1, #response do
            MySQL.query.await('INSERT INTO `tgiann_inventory_stashitems` (stash, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                response[i].stash, response[i].items
            })
        end
        tgiCore.DebugLog("inventory_stash converted")
    end

    local response = MySQL.query.await('SELECT * FROM `inventory_trunk`')
    if response and next(response) then
        for i = 1, #response do
            MySQL.query.await('INSERT INTO `tgiann_inventory_trunkitems` (plate, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                response[i].plate, response[i].items
            })
        end
        tgiCore.DebugLog("inventory_trunk converted")
    end

    local response = MySQL.query.await('SELECT * FROM `inventory_glovebox`')
    if response and next(response) then
        for i = 1, #response do
            MySQL.query.await('INSERT INTO `tgiann_inventory_gloveboxitems` (plate, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                response[i].plate, response[i].items
            })
        end
        tgiCore.DebugLog("inventory_glovebox converted")
    end

    if config.framework == "qb" then
        local response = MySQL.query.await('SELECT citizenid, inventory FROM `players`')
        if response and next(response) then
            for i = 1, #response do
                if response[i].inventory then
                    MySQL.query.await('INSERT INTO `tgiann_inventory_player` (citizenid, inventory, clotheinventory) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE inventory = VALUES(inventory), clotheinventory = VALUES(clotheinventory)', {
                        response[i].citizenid, convertItems(response[i].inventory), "[]"
                    })
                end
            end
            tgiCore.DebugLog("Player inventorys converted")
        end
    else
        local response = MySQL.query.await('SELECT identifier, inventory FROM `users`')
        if response and next(response) then
            for i = 1, #response do
                if response[i].inventory then
                    MySQL.query.await('INSERT INTO `tgiann_inventory_player` (citizenid, inventory, clotheinventory) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE inventory = VALUES(inventory), clotheinventory = VALUES(clotheinventory)', {
                        response[i].identifier, convertItems(response[i].inventory), "[]"
                    })
                end
            end
            tgiCore.DebugLog("Player inventorys converted")
        end
    end

    tgiCore.DebugLog("Finished")
end)

-- codem-inventory
RegisterCommand(config.commands.convert.convertcodeminv, function(source)
    if source > 0 then return tgiCore.DebugErrorLog("Pls use on server cmd") end

    local response = MySQL.query.await('SELECT * FROM `codem_new_stash`')
    if response and next(response) then
        for i = 1, #response do
            MySQL.query.await('INSERT INTO `tgiann_inventory_stashitems` (stash, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                response[i].stashname, response[i].items
            })
        end
        tgiCore.DebugLog("codem_new_stash converted")
    end

    local response = MySQL.query.await('SELECT * FROM `codem_new_vehicleandglovebox`')
    if response and next(response) then
        for i = 1, #response do
            MySQL.query.await('INSERT INTO `tgiann_inventory_gloveboxitems` (plate, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                response[i].plate, response[i].glovebox
            })

            MySQL.query.await('INSERT INTO `tgiann_inventory_trunkitems` (plate, items) VALUES (?, ?) ON DUPLICATE KEY UPDATE items = VALUES(items)', {
                response[i].plate, response[i].trunk
            })
        end
        tgiCore.DebugLog("codem_new_vehicleandglovebox converted")
    end

    local response = MySQL.query.await('SELECT identifier, inventory FROM `codem_new_inventory`')
    if response and next(response) then
        for i = 1, #response do
            if response[i].inventory then
                MySQL.query.await('INSERT INTO `tgiann_inventory_player` (citizenid, inventory, clotheinventory) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE inventory = VALUES(inventory), clotheinventory = VALUES(clotheinventory)', {
                    response[i].identifier, convertItems(response[i].inventory), "[]"
                })
            end
        end
        tgiCore.DebugLog("Player inventorys converted")
    end

    tgiCore.DebugLog("Finished")
end)
