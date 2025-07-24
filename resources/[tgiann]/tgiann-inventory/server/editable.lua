---@param src number
---@param banLogType "banOpenOtherPlayerInventory" | "banGiveItemSelf" | "banGiveMinusAmount" | "banRemoveMinusAmount" | "banCustomShop" | "banOpeningOtherPlayerInventoryFromDistance" | "banClientOpenInventory"
---@param msg string
function ban(src, banLogType, msg)
	banLog(src, banLogType, msg)
	if config.kickPlayerWhenHackingDatected then DropPlayer(tostring(src), "Cheating For Inventory System") end
	--[[ 	
	-- Example ban event
	TriggerClientEvent("tgiann-anticheat:ban", src, { -- Example Code
		adminMessage = msg,
		ban = 131487,
		kickMessage = "Cheating!"
	}) ]]
end

---@param plate string
---@return string | false
function isPlayerVehicle(plate)
	local table = config.framework == "qb" and "player_vehicles" or "owned_vehicles"
	local owner = config.framework == "qb" and "citizenid" or "owner"
	local result = MySQL.single.await('SELECT ' .. owner .. ' from ' .. table .. ' WHERE plate = ?', { plate })
	return result and result[owner] or false
end

---@param src number
---@return boolean
function isAdmin(src)
	if config.framework == "qb" then
		return IsPlayerAceAllowed(tostring(src), "command") -- refarance: https://github.com/qbcore-framework/qb-adminmenu/blob/main/server/server.lua#L52
	else
		local xPlayer = tgiCore.getPlayer(src)
		return xPlayer.getGroup(src) == "admin"
	end
end

lib.callback.register("tgiann-inventory:server:isAdmin", isAdmin)

--- @param moneyType string
--- @return boolean, string | nil
function isMoneyItem(moneyType)
	if not config.moneyAsItem.active then return false end
	for itemName, mType in pairs(config.moneyAsItem.items[config.framework]) do
		if mType == moneyType then
			return true, itemName
		end
	end
	return false
end

exports("IsMoneyItem", isMoneyItem)

--- For money as item
---@param src number
---@param itemName string
local function setMoney(src, itemName)
	if not config.moneyAsItem.active then return end
	local moneyType = config.moneyAsItem.items[config.framework][itemName]
	if not moneyType then return end
	local pInventory = GetInventory(src, "player")
	if not pInventory then return end
	local xPlayer = tgiCore.getPlayer(src)
	if not xPlayer then return end
	local totalAmount = pInventory.Functions.GetItemTotalAmount(itemName)
	if config.framework == "esx" then
		xPlayer.setAccountMoney(moneyType, totalAmount, "inventory money as item", true)
	elseif config.framework == "qb" then
		if config.qbx then
			exports["qbx_core"]:SetMoney(src, moneyType, totalAmount, "inventory money as item", true)
		else
			xPlayer.Functions.SetMoney(moneyType, totalAmount, "inventory money as item", true)
		end
	end
end

--- if the value is false, the use of the item is canceled
---@param src number
---@param itemData table
---@param itemSharedData table
---@diagnostic disable-next-line: unused-local
function useItemEditable(src, itemData, itemSharedData)
	local decayableItemsData = IsDecayableItem(itemData.name)
	if decayableItemsData then
		local durability = itemData.info?.durability and GetDurabilityPercent(itemData.info.durability, decayableItemsData, os.time()) or 1
		if durability <= 0 then
			if config.removeDecayableItem then
				RemoveItem(src, itemData.name, 1, itemData.slot)
			end
			tgiCore.notif(src, lang.cantUseThisItem, "error")
			return false
		end
	end

	if itemData.name == "myCustomUseItem" then
		TriggerClientEvent('myCustomEvent', src, itemData.name)
		return false -- We make it false because we do not want the main use item function to continue
	end

	return true
end

---@param src number
---@param itemData table
---@param amount number
function addItemDetect(src, itemData, amount)
	if not itemData then return end

	itemData.itemAddRemoveLog = "added"
	TriggerClientEvent("tgiann-inventory:itemAddRemoveLog", src, itemData, amount)

	if string.match(itemData.name:lower(), "weapon") then
		TriggerClientEvent('inventory:client:addWeapon', src, true, true, itemData.slot)
	else
		if config.moneyAsItem.active then setMoney(src, itemData.name) end
		TriggerClientEvent('tgiann-inventory:addedItem', src, itemData.name)
	end
end

---@param src number
---@param itemData table
---@param amount number
function removeItemDetect(src, itemData, amount)
	if not itemData then return end

	itemData.itemAddRemoveLog = "removed"
	TriggerClientEvent("tgiann-inventory:itemAddRemoveLog", src, itemData, amount)

	if string.match(itemData.name:lower(), "weapon") then
		TriggerClientEvent('inventory:client:removeWeapon', src, true, true, itemData.slot)
	elseif itemData.name:lower() == "kemer" then
		TriggerClientEvent('tgiann-hud:removeKemer', src)
	elseif itemData.name:lower() == "megaphone" then
		TriggerClientEvent('tgiann-megaphone:drop', src)
	elseif itemData.name:lower() == "scooter" then
		TriggerClientEvent('tgiann-scooter:drop', src)
	else
		if config.moneyAsItem then setMoney(src, itemData.name) end
		TriggerClientEvent('tgiann-inventory:dropItem', src, itemData.name)
	end
end

---@param payload { source:number, shopType: string, itemName: string, metadata: table, count:number, price: number }
function itemBought(payload)
	buyItemLog(payload.shopType, payload.itemName, payload.count, payload.price, payload.source)

	if config.tgiannServer and payload.shopType == "police" then
		local itemName = payload.itemName
		if string.find(itemName, "weapon") then
			local label = itemList[itemName].label
			local xPlayer = tgiCore.getPlayer(payload.source)
			if not xPlayer then return end
			MySQL.insert('INSERT INTO tgiann_mdt_shop (name, itemname, itemserial, time) VALUES (?, ?, ?, ?) ', { xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname, label, payload.metadata.serie or "Eşya", os.time() })
		end
	end
end

---@param itemData table
---@param info? table
---@param Player? table
local function setQbItemInfo(itemData, info, Player)
	if config.framework == "esx" then return info end
	if itemData.name == "id_card" then
		if Player then
			info.citizenid = Player.PlayerData.citizenid
			info.firstname = Player.PlayerData.charinfo.firstname
			info.lastname = Player.PlayerData.charinfo.lastname
			info.birthdate = Player.PlayerData.charinfo.birthdate
			info.gender = Player.PlayerData.charinfo.gender
			info.nationality = Player.PlayerData.charinfo.nationality
		end
	elseif itemData.name == "driver_license" then
		if Player then
			info.firstname = Player.PlayerData.charinfo.firstname
			info.lastname = Player.PlayerData.charinfo.lastname
			info.birthdate = Player.PlayerData.charinfo.birthdate
		end
		info.type = "Class C Driver License"
	elseif itemData.name == "harness" then
		info.uses = 20
	elseif itemData.name == "markedbills" then
		info.worth = math.random(5000, 10000)
	elseif itemData.name == "labkey" then
		info.lab = exports["qb-methlab"]:GenerateRandomLab()
	elseif itemData.name == "printerdocument" then
		info.url = "https://cdn.discordapp.com/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png"
	end
	return info
end

---@param itemData ItemData
---@param info? table
---@param Player? table
function setItemInfo(itemData, info, Player)
	if not info or info == "" or (type(info) == "table" and not next(info)) then
		info = {}
		local decayableItemsData = IsDecayableItem(itemData.name)
		if itemData.name == config.jerryCan.item then
			info = config.jerryCan.metadata
		elseif decayableItemsData then
			info.type = "decayableItems"
			info.durability = os.time()
			info.durabilitySecond = decayableItemsData
		elseif itemData.type == 'weapon' then
			info = {
				serie = GetRandomItemId(),
				durabilityPercent = 100,
				ammo = 0,
				usedTotalAmmo = 0
			}
		elseif GetResourceState("tgiann-food-jobs") == "started" and exports["tgiann-food-jobs"]:items()[itemData.name] and Player then
			info = exports["tgiann-food-jobs"]:customItemMetadata(tgiCore.getSource(Player), tgiCore.getCid(Player))
		elseif config.maxUseAmount[itemData.name] then
			info.type = "maxUseAmount"
			info.maxUseAmount = config.maxUseAmount[itemData.name].amount
		elseif config.realisticArmor.active and getRealisticArmor(itemData.name) then
			info.durabilityPercent = 0
			info.realisticArmor = true
		else
			info = setQbItemInfo(itemData, info, Player)
		end
	end
	return info
end

---@param playerPed number
---@param value number
function setPedArmour(playerPed, value)
	SetPedArmour(playerPed, value)
end

for i = 1, #config.itemStash do
	local stashData = config.itemStash[i]
	tgiCore.CreateUseableItem(stashData.item, function(source, item)
		local src = source
		if openedAnySecondaryInventory(src) then
			return tgiCore.notif(src, lang.closeInventoryFirst, "error", 5000)
		end
		if not item.info.id then
			local xPlayer = tgiCore.getPlayer(src)
			item.info = { id = stashData.item .. tgiCore.getCid(xPlayer) .. GetRandomItemId() }
			UpdateItemMetadata(src, stashData.item, item.slot, item.info)
		end
		OpenInventory(src, "stash", item.info.id, {
			maxweight = stashData.maxweight,
			slots = stashData.slots,
			whitelist = stashData.whitelist
		})
	end)
end
