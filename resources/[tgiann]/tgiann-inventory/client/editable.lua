local admin = nil

---@return boolean
function isPlayerAdmin()
    if admin == nil then
        admin = lib.callback.await("tgiann-inventory:server:isAdmin", false)
    end
    return admin
end

---@param job string
---@return boolean
function isPolice(job)
    for i = 1, #config.weaponPoliceJobs do
        if config.weaponPoliceJobs[i] == job then
            return true
        end
    end
    return false
end

---@param bool boolean
function hotbarIsOpenEditable(bool)
    TriggerEvent("tgiann-inventory:hotbar", bool)
end

---@return boolean
function canOpen()
    if not PlayerData then PlayerData = exports["tgiann-core"]:getPlayerData() end
    return not IsNuiFocused() and not IsDisabledControlPressed(0, 19) and client.inventoryActive and not client.isDead and not IsPauseMenuActive() and client.playerLoaded and not PlayerData.metadata.kelepce and not PlayerData.metadata.pkelepce
end

---@param text string
---@param type? "me" | "do"
function emote(text, type)
    if not config.autoEmote then return end
    ExecuteCommand((type or "me") .. " " .. text)
end

RegisterNetEvent('tgiann-inventory:emote')
AddEventHandler('tgiann-inventory:emote', emote)

function opened()
    TriggerEvent("tgiann-hud:ui", false)
    TriggerEvent("tgiann-lumihud:ui", false)
end

function closed()
    TriggerEvent("tgiann-hud:ui", true)
    TriggerEvent("tgiann-lumihud:ui", true)
end

---@return boolean
function disableClotheButton()
    --[[  local onDuty = false
    if PlayerData.job.name == "police" then
        onDuty = PlayerData.job.onduty
    end
    return onDuty or (exports["tgiann-event"]:joinedAnyEvent() and true or false ) or exports["tgiann-clothing"]:isInspect() ]]
    return false
end

---@param vehicle number
---@return {maxweight: number, slots: number}
function getTrunkData(vehicle)
    local modelData = config.vehicleModelSlotsMaxWeights[GetEntityModel(vehicle)]
    if modelData then
        return {
            maxweight = modelData.maxWeight,
            slots = modelData.slots,
        }
    end

    local classData = config.vehicleClassSlotsMaxWeights[GetVehicleClass(vehicle)]
    if classData then
        return {
            maxweight = classData.maxWeight,
            slots = classData.slots,
        }
    end

    return {
        maxweight = 10000,
        slots = 5,
    }
end

---@return boolean
function removeWeaponCustom()
    --[[ if exports["tgiann-pvpinventory"]:isActive() then
        SetCurrentWeapon()
        return true
    end ]]
    return false
end

---@return boolean
function dropWeaponWhenDieEditable()
    --[[ local zoneIsRed = exports["tgiann-safezone"]:getZoneType() == "red"
    if zoneIsRed and exports["tgiann-police"]:playerIsPolice() then
        return
    end

    if zoneIsRed and PlayerData.metadata.vip.level == 2 and math.random(1, 100) >= 50 then -- 2 Level VIP Özelliği %50 silah düşme oranı
        TriggerEvent("inventory:client:removeWeapon")
        return
    end ]]

    return true
end

---@param status { hunger?:number, thirst?:number }
function setPlayerStatus(status)
    if config.framework == "esx" then
        if status.hunger then
            TriggerEvent("esx_status:getStatus", "hunger", function(value)
                value.set(value.val + status.hunger)
            end)
        end
        if status.thirst then
            TriggerEvent("esx_status:getStatus", "thirst", function(value)
                value.set(value.val + status.thirst)
            end)
        end
    elseif config.framework == "qb" then
        if status.hunger then
            TriggerServerEvent("consumables:server:addHunger", tgiCore.core.Functions.GetPlayerData().metadata.hunger + status.hunger)
        end
        if status.thirst then
            TriggerServerEvent("consumables:server:addThirst", tgiCore.core.Functions.GetPlayerData().metadata.thirst + status.thirst)
        end
    end
end

---@param itemConfig table
---@param itemName string
function editableAddCarryItem(itemConfig, itemName)
    -- LocalPlayer.state:set('hrCarry', itemName, false)
end

---@param carryItem {object:number, item:string}
function editableRemoveCarryItem(carryItem)
    -- LocalPlayer.state:set('hrCarry', nil, false)
end

---@return boolean
---@param typeName "armor" | "plate"
---@param metadata? table only for armor
function canUseRealisticArmor(typeName, metadata)
    return true
end

---@param targetPlayerPed number PlayerPedId
---@param targetPlayerServerId number PlayerServerId
function canRobTarget(targetPlayerPed, targetPlayerServerId)
    local isDead = tgiCore.IsTargetDead(targetPlayerServerId)
    if isDead then return config.searchPlayer.deadPlayer, lang.robDeadError end

    if not config.searchPlayer.animation.active then return true end

    for i = 1, #config.searchPlayer.animation.list do
        local data = config.searchPlayer.animation.list[i]
        if IsEntityPlayingAnim(targetPlayerPed, data.name, data.anim, 3) then
            return true
        end
    end

    return false, lang.robAnimationError
end

---@param enable boolean
function setFastSlotsEnable(enable)
    client.fastSlotsEnable = enable
end

exports("SetFastSlotsEnable", setFastSlotsEnable)
