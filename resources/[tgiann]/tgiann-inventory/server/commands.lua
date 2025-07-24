local adminPerm = config.tgiannServer and { "tgi" } or config.framework == "qb" and "god" or "admin"

tgiCore.CommandsAdd(config.commands.admin.giveitem, "Give An Item (Admin Only)", { { name = "id", help = "Player ID" }, { name = "item", help = "Name of the item (not a label)" }, { name = "amount", help = "Amount of items" } }, false, function(source, args)
	local src = source
	local id = tonumber(args[1])
	local Player = config.tgiannServer and tgiCore.getPlayerById(id) or tgiCore.getPlayer(id)
	local amount = tonumber(args[3]) or 1
	local itemData = itemList[tostring(args[2]):lower()]
	if not Player then return tgiCore.notif(src, "Player Offline", "error") end
	local targetSrc = tgiCore.getSource(Player)
	if not itemData then return tgiCore.notif(src, "There is no such item", "error") end
	if not AddItem(targetSrc, itemData.name, amount) then return tgiCore.notif(src, "Player Is Full", "error") end

	tgiCore.notif(src, "Item Given ID:" .. tgiCore.getCid(Player) .. " | " .. amount .. "x " .. itemData.name .. "", "success")
	TriggerEvent("tgiann-core:discordLog", webhooks.adminLog, string.format("/giveitem %s %s %s", id, args[2], amount), src, targetSrc)
end, adminPerm)

tgiCore.CommandsAdd(config.commands.admin.setitem, "Set An Item (Admin Only)", { { name = "id", help = "Player ID" }, { name = "item", help = "Name of the item (not a label)" }, { name = "amount", help = "Amount of items" } }, false, function(source, args)
	local src = source
	local id = tonumber(args[1])
	local Player = config.tgiannServer and tgiCore.getPlayerById(id) or tgiCore.getPlayer(id)
	local amount = tonumber(args[3]) or 1
	local itemData = itemList[tostring(args[2]):lower()]
	if not Player then return tgiCore.notif(src, "Player Offline", "error") end
	local targetSrc = tgiCore.getSource(Player)
	local pInventory = GetInventory(targetSrc, "player")
	if not itemData then return tgiCore.notif(src, "There is no such item", "error") end
	if not pInventory.Functions.SetItem(itemData.name, amount) then return tgiCore.notif(src, "Player Is Full", "error") end

	pInventory.Functions.Save()
	tgiCore.notif(src, "Item Given ID:" .. tgiCore.getCid(Player) .. " | " .. amount .. "x " .. itemData.name .. "", "success")
	TriggerEvent("tgiann-core:discordLog", webhooks.adminLog, string.format("/giveitem %s %s %s", id, args[2], amount), src, targetSrc)
end, adminPerm)

tgiCore.CommandsAdd(config.commands.admin.clearinv, 'Clear Players Inventory (Admin Only)', { { name = 'id', help = 'Player ID' } }, false, function(source, args)
	local src = source
	if args[1] then
		local Player = config.tgiannServer and tgiCore.getPlayerById(tonumber(args[1])) or tgiCore.getPlayer(tonumber(args[1]))
		if Player then
			local targetSrc = tgiCore.getSource(Player)
			local pInventory = GetInventory(targetSrc, "player")
			pInventory.Functions.ClearInventory()
			tgiCore.notif(src, "Player's Inventory Deleted", "error")
			TriggerEvent("tgiann-core:discordLog", webhooks.adminLog, string.format("/clearinv %s (Target Online)", args[1]), src, targetSrc)
		else
			local row = MySQL.single.await('SELECT `inventory`, `citizenid` FROM `tgiann_inventory_player` WHERE `citizenid` = ? LIMIT 1', { args[1] })
			if row then
				MySQL.update('UPDATE tgiann_inventory_player SET inventory = ? WHERE citizenid = ?', { "[]", row.citizenid })
				tgiCore.notif(src, "Player's Inventory Deleted", "error")
				TriggerEvent("tgiann-core:discordLog", webhooks.adminLog, string.format("/clearinv %s (Target Offline)", args[1]), src)
			else
				tgiCore.notif(src, "There is no such player", "error")
			end
		end
	else
		local Player = tgiCore.getPlayer(src)
		if not Player then return tgiCore.notif(src, "Player Offline", "error") end
		local pInventory = GetInventory(tgiCore.getSource(Player), "player")
		pInventory.Functions.ClearInventory()
		TriggerEvent("tgiann-core:discordLog", webhooks.adminLog, "/clearinv (Self Inventory)", src)
	end
end, adminPerm)

tgiCore.CommandsAdd(config.commands.admin.backpack, "Set Backpack Level", { { name = "id", help = "Player ID" }, { name = "level", help = "1-2-3" } }, true, function(source, args)
	local src = source
	local backpack = tonumber(args[2])
	if not backpack then return tgiCore.notif(src, "You Have To Write a Level", "error") end
	local max = #config.backpack
	if backpack <= 0 and backpack > max then return tgiCore.notif(src, string.format("Backpack Level Can Be Max %s Min 1", max), "error") end
	local xPlayer = config.tgiannServer and tgiCore.getPlayerById(tonumber(args[1])) or tgiCore.getPlayer(tonumber(args[1]))
	if not xPlayer then return tgiCore.notif(src, "Player Offline", "error") end
	local targetSrc = tgiCore.getSource(xPlayer)
	MySQL.insert('INSERT INTO tgiann_inventory_player (citizenid, lvl) VALUES (:citizenid, :lvl) ON DUPLICATE KEY UPDATE citizenid = :citizenid, lvl = :lvl', {
		citizenid = tgiCore.getCid(xPlayer),
		lvl = backpack,
	})
	local pInventory = GetInventory(targetSrc, "player")
	if pInventory then
		local data = config.backpack[backpack]
		pInventory.Functions.UpdateData({
			MaxSlots = data.slots,
			MaxWeight = data.weight
		})
	end
	tgiCore.notif(src, "Backpack Level Seted", "success")
	TriggerEvent("tgiann-core:discordLog", webhooks.adminLog, string.format("/backpack %s %s", args[1], backpack), src, targetSrc)
end, adminPerm)

tgiCore.CommandsAdd(config.commands.admin.deleteinv, "Deletes Inventory", { { name = "id", help = "Inventory Name/Plate" }, { name = "invType", help = "Inventory Type(trunk, glovebox, stash)" } }, true, function(source, args)
	local src = source
	local invType = args[2]
	local invId = args[1]
	if DeleteInventory(invType, invId) then
		tgiCore.notif(src, "Inventory Deleted! " .. secondInventoryId, "success")
		TriggerEvent("tgiann-core:discordLog", webhooks.adminLog, string.format("/deleteinv %s %s", invType, invId), src)
	else
		tgiCore.notif(src, "There Is No Such Inventory!", "error")
	end
end, adminPerm)

tgiCore.CommandsAdd(config.commands.admin.openinv, "Open a Inventory", { { name = "id", help = "Inventory Name/Plate" }, { name = "invType", help = "Inventory Type(trunk, glovebox, stash)" } }, true, function(source, args)
	local src = source
	local invType = args[2]
	local invId = args[1]
	OpenInventory(src, invType, invId, {
		maxweight = 999999999999,
		slots = 1000,
	})
	TriggerEvent("tgiann-core:discordLog", webhooks.adminLog, string.format("/openinv %s %s", invType, invId), src)
end, adminPerm)

local checkItemAmount = 0
local checkItemTotalAmount = 0
local function checkItemListAdd(name, amount, findItem)
	if name == findItem then
		checkItemAmount = checkItemAmount + amount
	end
end

local function checkItemListPrint(inventoryType, inventoryName, findItem, findAmount)
	if checkItemAmount > findAmount then
		tgiCore.DebugLog(string.format("Env Type: %s | %s | Item: %s | Amount: %s", inventoryType, inventoryName, findItem, checkItemAmount))
		checkItemTotalAmount = checkItemTotalAmount + checkItemAmount
	end
	checkItemAmount = 0
end

tgiCore.CommandsAdd(config.commands.admin.checkitem, "Checks One Item in All Inventories", { { name = "item", help = "Item Name" }, { name = "minamount", help = "Min Amount" } }, true, function(source, args)
	local findItem = args[1]
	local findAmount = tonumber(args[2])
	local src = source
	checkItemTotalAmount = 0
	if itemList[findItem] then
		local result = MySQL.query.await('SELECT inventory, citizenid, citizenid FROM tgiann_inventory_player')
		if result then
			for i = 1, #result do
				local resultData = result[i]
				resultData.inventory = json.decode(resultData.inventory)
				if resultData.inventory then
					for _, data in pairs(resultData.inventory) do
						checkItemListAdd(data.name, data.amount, findItem)
					end
					checkItemListPrint("Player", resultData.citizenid, findItem, findAmount)
				end
			end
		end

		local result = MySQL.query.await('SELECT * FROM tgiann_inventory_stashitems')
		if result then
			for i = 1, #result do
				local resultData = result[i]
				resultData.items = json.decode(resultData.items)
				for _, data in pairs(resultData.items) do
					checkItemListAdd(data.name, data.amount, findItem)
				end
				checkItemListPrint("stash", resultData.stash, findItem, findAmount)
			end
		end

		local result = MySQL.query.await('SELECT * FROM tgiann_inventory_trunkitems')
		if result then
			for i = 1, #result do
				local resultData = result[i]
				resultData.items = json.decode(resultData.items)
				for _, data in pairs(resultData.items) do
					checkItemListAdd(data.name, data.amount, findItem)
				end
				checkItemListPrint("trunk", resultData.plate, findItem, findAmount)
			end
		end

		local result = MySQL.query.await('SELECT * FROM tgiann_inventory_gloveboxitems')
		if result then
			for i = 1, #result do
				local resultData = result[i]
				resultData.items = json.decode(resultData.items)
				for _, data in pairs(resultData.items) do
					checkItemListAdd(data.name, data.amount, findItem)
				end
				checkItemListPrint("glovebox", resultData.plate, findItem, findAmount)
			end
		end

		--[[ local result = MySQL.query.await('SELECT id, item, amount FROM tgiann_market_sell')
		if result then
			for i=1, #result do
				local resultData = result[i]
				checkItemListAdd(resultData.item, resultData.amount, findItem)
				checkItemListPrint("tgiann_market_sell", resultData.id, findItem, findAmount)
			end
		end
	
		local result = MySQL.query.await('SELECT id, item, amount FROM tgiann_market_item_storage')
		if result then
			for i=1, #result do
				local resultData = result[i]
				checkItemListAdd(resultData.item, resultData.amount, findItem)
				checkItemListPrint("tgiann_market_item_storage", resultData.id, findItem, findAmount)
			end
		end
 		]]
		tgiCore.DebugLog(string.format("Total Amount: %s", checkItemTotalAmount))
	else
		tgiCore.notif(src, "There is no such item!", "error")
	end
end, adminPerm)

tgiCore.CommandsAdd(config.commands.admin.items, "Lists all Items available in the server", {}, false, function(source, args)
	OpenShop(source, "admin")
end, adminPerm)

-- PLAYER COMMANDS

-- https://github.com/qbcore-framework/qb-banking/blob/main/server.lua#L493
if config.commands.player.givecash.active then
	tgiCore.CommandsAdd(config.commands.player.givecash.command, 'Give Cash', { { name = 'id', help = 'Player ID' }, { name = 'amount', help = 'Amount' } }, true, function(source, args)
		local src = source
		local xPlayer = tgiCore.getPlayer(src)
		if not xPlayer then return end
		local playerPed = GetPlayerPed(src)
		local playerCoords = GetEntityCoords(playerPed)
		local tPlayer = tgiCore.getPlayer(tonumber(args[1]))
		if not tPlayer then return tgiCore.notif(src, lang.giveCashNoUser, 'error') end
		local targetPed = GetPlayerPed(tonumber(args[1]))
		local targetCoords = GetEntityCoords(targetPed)
		local amount = tonumber(args[2])
		if not amount then return tgiCore.notif(src, lang.giveCashInvalidAmount, 'error') end
		if amount <= 0 then return tgiCore.notif(src, lang.giveCashInvalidAmount, 'error') end
		if #(playerCoords - targetCoords) > 5 then return tgiCore.notif(src, lang.giveCashToofar, 'error') end
		if tgiCore.getMoney(xPlayer, "cash") < amount then return tgiCore.notif(src, lang.giveCashNoMoney, 'error') end
		tgiCore.removeMoney(xPlayer, 'cash', amount, 'cash transfer')
		tgiCore.addMoney(tPlayer, 'cash', amount, 'cash transfer')
		tgiCore.notif(src, string.format(lang.giveCashSuccesGive, amount), 'success')
		tgiCore.notif(tgiCore.getSource(tPlayer), string.format(lang.giveCashSuccesGet, amount), 'success')
	end)
end

if config.commands.player.rob.active then
	tgiCore.CommandsAdd(config.commands.player.rob.command, 'Rob Closest Player', {}, false, function(source, args)
		local targetPlayer = lib.callback.await("tgiann-inventory:robPlayer", source)
		if not targetPlayer then return end
		OpenInventoryById(source, targetPlayer, true)
	end)
end
