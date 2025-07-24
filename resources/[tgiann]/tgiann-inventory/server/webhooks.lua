webhooks = {
    use = "",
    giveOtherPlayer = "",
    buyItem = "",
    transfer = "",
    delete = "",
    adminLog = "",
    addItem = "",
    banLog = "",
    dumpsterSearch = "",

    -- drop when die
    dropWeapon = "",
    dropMoney = "",
    dropItems = "", -- Also using throw item
    pickUpWeapon = "",
    pickUpCash = "",
    pickUpItems = "", -- Also using throw item
}

-- u can edit commands logs from server/commands.lua

function dropMoneyLog(cash, src)
    TriggerEvent("tgiann-core:discordLog", webhooks.dropMoney, string.format(lang.logDropMoney, cash), src)
end

function dropWeaponLog(val, src)
    TriggerEvent("tgiann-core:discordLog", webhooks.dropWeapon, string.format(lang.logDropWeapon, val.namecash), src)
end

function dropItemsLog(dropItemList, src)
    TriggerEvent("tgiann-core:discordLog", webhooks.dropItems, string.format("%s: %s", lang.logDropItems, json.encode(dropItemList)), src)
end

function pickUpWeaponLog(data, src)
    TriggerEvent("tgiann-core:discordLog", webhooks.pickUpWeapon, string.format(lang.logGetWeapon, data.weapon.name), src)
end

function pickUpCashLog(data, src)
    TriggerEvent("tgiann-core:discordLog", webhooks.pickUpCash, string.format(lang.logGetMoney, data.cash), src)
end

function pickUpItemsLog(data, src)
    TriggerEvent("tgiann-core:discordLog", webhooks.pickUpItems, string.format("%s: %s", lang.logGetItems, json.encode(data.dropItemList)), src)
end

function openAdminShopLog(src)
    TriggerEvent("tgiann-core:discordLog", webhooks.adminLog, "Open Admin Shop", src)
end

function giveOtherPlayer(inputVal, label, src, OtherPlayerSrc)
    TriggerEvent("tgiann-core:discordLog", webhooks.giveOtherPlayer, string.format(lang.logGiveItem, inputVal, label), src, OtherPlayerSrc)
end

function buyItemLog(shopType, itemName, count, price, src)
    TriggerEvent("tgiann-core:discordLog", webhooks.buyItem, string.format(lang.logBoughtItem, shopType, count, GetItemLabel(itemName), price), src)
end

function transferLog(itemName, amount, dragDataInvKeyName, dropDataInvKeyName, src)
    TriggerEvent("tgiann-core:discordLog", webhooks.transfer, string.format(lang.logSwapItem, itemName, amount, dragDataInvKeyName, dropDataInvKeyName), src)
end

function addItemLog(src, itemName, amount, slot, invokingResource)
    TriggerEvent("tgiann-core:discordLog", webhooks.addItem, string.format(lang.logAddItem, itemName, amount, slot, invokingResource), src)
end

function removeItemLog(src, itemName, amount, slot, invokingResource)
    TriggerEvent("tgiann-core:discordLog", webhooks.removeItem, string.format(lang.logRemoveItem, itemName, amount, slot, invokingResource), src)
end

function deleteItemLog(data, src) --Not Using
    TriggerEvent("tgiann-core:discordLog", webhooks.delete, string.format(lang.logDeleteItem, data.invKeyName, data.itemData.amount, GetItemLabel(data.itemData.name)), src)
end

function useLog(label, src)
    TriggerEvent("tgiann-core:discordLog", webhooks.use, string.format(lang.logUseItem, label), src)
end

function dumpsterSearch(src, item, amount)
    TriggerEvent("tgiann-core:discordLog", webhooks.dumpsterSearch, string.format(lang.logDumpsterSearch, item, amount), src)
end

function banLog(src, banLogType, msg)
    local playerName = GetPlayerName(src) or "Unknown Player Name"
    banLogType = banLogType or "Unknown Ban Type"
    msg = msg or "Unknown Reason"
    tgiCore.DebugErrorLog("^1[ANTICHEAT] ^0 [ " .. src .. " ]" .. playerName .. " Has been kicked for " .. msg .. " (" .. banLogType .. ")")
    TriggerEvent("tgiann-core:discordLog", webhooks.banLog, msg, src)
end
