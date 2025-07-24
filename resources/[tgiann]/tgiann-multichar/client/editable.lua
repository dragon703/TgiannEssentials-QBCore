function newCharOpened(spawnData)
    if config.framework == "esx" then
        while not tgiCore.core.GetPlayerData()?.loadout do Wait(100) end -- Wait for esx loadout
        teleportPlayer(config.defaultSpawn)
        SetFocusEntity(PlayerPedId())
        TriggerEvent("esx_skin:openSaveableMenu")
    elseif config.framework == "qb" then
        TriggerEvent('qb-weathersync:client:EnableSync')
        TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
        TriggerEvent('QBCore:Client:OnPlayerLoaded')
        if spawnData?.isApartment then
            TriggerServerEvent("apartments:server:CreateApartment", spawnData.apartType, spawnData.apartLabel, true)
        else
            teleportPlayer(config.defaultSpawn)
            TriggerEvent('qb-clothes:client:CreateFirstCharacter')
        end
    end
end

function loadPedClothing(skinData, charPed)
    if not skinData?.skin then return end
    if config.tgiann_clothing then
        TriggerEvent('tgiann-clothing:client:loadPedClothing', skinData.skin, charPed)
    elseif config.rcore_clothing then
        exports.rcore_clothing:setPedSkin(charPed, skinData.skin)
    elseif config.crm_appearance then
        exports['crm-appearance']:crm_set_ped_appearance(charPed, skinData.skin)
    elseif config.illenium_appearance then
        exports['illenium-appearance']:setPedAppearance(charPed, skinData.skin)
    elseif config.framework == "qb" then
        TriggerEvent('qb-clothing:client:loadPlayerClothing', skinData.skin, charPed)
    end
end

function networkSessionStarted() -- Triggered when entering the game
    if GetResourceState("spawnmanager") == "started" then
        exports["spawnmanager"]:setAutoSpawn(false)
    end
end

function multiCharMenuOpened()
    MumbleSetVolumeOverride(PlayerId(), 0.0)
    ShutdownLoadingScreen()
    ShutdownLoadingScreenNui()
    if config.framework == "esx" then
        TriggerEvent("esx:loadingScreenOff")
    end
end

function spawnChar(isNewChar, selectedCharData, spawnCoords, spawnData)
    spawnCharBefore()
    if config.framework == "esx" then -- I Hate ESX
        local skinData = selectedCharData?.skinData
        tgiCore.Callback.NoAwait("tgiann-multichar:spawnselector:CharacterChosen", function()
            SetPlayerInvincible(PlayerPedId(), false)
            SetEntityCoordsNoOffset(PlayerPedId(), spawnCoords.x, spawnCoords.y, spawnCoords.z, false, false, false, true)
            NetworkResurrectLocalPlayer(spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnCoords.w or 0.0, true, true, false)
            TriggerEvent('playerSpawned', { -- OLD ESX Support
                x = spawnCoords.x,
                y = spawnCoords.y,
                z = spawnCoords.z,
                heaidng = spawnCoords.w or 0.0,
                model = skinData?.model,
            })

            if config.tgiann_clothing or config.rcore_clothing then
                return
            end
            if skinData then
                if not skinData.model then
                    if skinData.sex == "female" then
                        skin.sex = 1
                    else
                        skin.sex = 0
                    end
                end
                TriggerEvent("skinchanger:loadSkin", skin)
            end
        end, selectedCharData.playerData.identifier)
    elseif config.framework == "qb" then
        if isNewChar then
            newCharOpened(spawnData)
        else
            teleportPlayer(spawnCoords)
            tgiCore.Callback.NoAwait("tgiann-multichar:spawnselector:CharacterChosen", function()
                local PlayerData = tgiCore.core.Functions.GetPlayerData()
                local insideMeta = PlayerData.metadata?.inside
                if spawnData?.isLast and insideMeta then -- last location
                    if insideMeta.house ~= nil then
                        local houseId = insideMeta.house
                        TriggerEvent('qb-houses:client:LastLocationHouse', houseId)
                    elseif insideMeta.apartment.apartmentType ~= nil or insideMeta.apartment.apartmentId ~= nil then
                        local apartmentType = insideMeta.apartment.apartmentType
                        local apartmentId = insideMeta.apartment.apartmentId
                        TriggerEvent('qb-apartments:client:LastLocationHouse', apartmentType, apartmentId)
                    end
                elseif spawnData?.isHouse then
                    TriggerEvent('qb-houses:client:enterOwnedHouse', spawnCoords)
                    TriggerServerEvent('qb-houses:server:SetInsideMeta', 0, false)
                    TriggerServerEvent('qb-apartments:server:SetInsideMeta', 0, 0, false)
                else
                    TriggerServerEvent('qb-houses:server:SetInsideMeta', 0, false)
                    TriggerServerEvent('qb-apartments:server:SetInsideMeta', 0, 0, false)
                end
                TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
                TriggerEvent('QBCore:Client:OnPlayerLoaded')
            end, selectedCharData.playerData.citizenid)
        end
    end
end

function setEntityCoords(ped, x, y, z)
    SetEntityCoords(ped, x + 0.0, y + 0.0, z + 0.0)
end

function setEntityHeading(ped, heading)
    SetEntityHeading(ped, heading and heading + 0.0 or 0.0)
end

function teleportPlayer(coords)
    SetEntityCoords(PlayerPedId(), coords.x + 0.0, coords.y + 0.0, coords.z + 0.0)
end

function takeScreenShoot()
    local url = tgiCore.Callback.Await("tgiann-multichar:multichar:getScreenshotURL")
    TriggerEvent("tgiann-multichar:notif", lang.photoUrlCopied, "success", 2500)
    return url
end

function getExtraSpawnLocations(selectedCharData)
    local data = {}
    if config.framework == "qb" then
        if config.qb_houses then
            local houses = tgiCore.Callback.Await('tgiann-multichar:spawnselector:getOwnedHouses', selectedCharData.playerData.citizenid)
            for i = 1, #houses do
                data[#data + 1] = {
                    label = Houses[houses[i].house].adress,
                    desc = "House",
                    icon = "house.svg",
                    coords = nil,
                    data = {
                        isHouse = true,
                    }
                }
            end
        end

        if config.qb_apartments then
            local result = tgiCore.Callback.Await('tgiann-multichar:apartments:GetOwnedApartment', selectedCharData.playerData.citizenid)
            if result then
                local apartData = Apartments.Locations[result.type]
                data[#data + 1] = {
                    label = result.label,
                    desc = "Apartment",
                    icon = "apartment.svg",
                    coords = apartData.coords.enter,
                    data = {
                        isApartment = true,
                        apartLabel = result.label,
                        apartType = result.type,
                        apartId = result.name
                    }
                }
                TriggerEvent('apartments:client:SetHomeBlip', result.type)
            end
        end
    end

    if config.qs_housing then
        local result = tgiCore.Callback.Await('tgiann-multichar:spawnselector:getQsHousing', selectedCharData.playerData.citizenid or selectedCharData.playerData.identifier)
        if result then
            for i = 1, #result do
                local houseData = result[i]
                houseData.coords = json.decode(houseData.coords)
                data[#data + 1] = {
                    label = houseData.label,
                    desc = "House",
                    icon = "house.svg",
                    coords = vector4(houseData.coords.enter.x, houseData.coords.enter.y, houseData.coords.enter.z, 0.0)
                }
            end
        end
    end

    if config.tgiann_house then
        local result = tgiCore.Callback.Await('tgiann-house:getPlayerHouses', selectedCharData.playerData.citizenid or selectedCharData.playerData.identifier)
        if result then
            for i = 1, #result do
                local houseData = exports["tgiann-house"]:getHouseData(result[i].name)
                data[#data + 1] = {
                    label = houseData.name,
                    desc = "House",
                    icon = "house.svg",
                    coords = vector4(houseData.doorCoord.x, houseData.doorCoord.y, houseData.doorCoord.z, 0.0)
                }
            end
        end
    end

    if config.origen_housing then
        local result = exports['origen_housing']:getPlayerHouses(selectedCharData.playerData.citizenid or selectedCharData.playerData.identifier)
        if result then
            for i = 1, #result do
                local houseData = result[i]
                data[#data + 1] = {
                    label = houseData.name,
                    desc = "House",
                    icon = "house.svg",
                    coords = vector4(houseData.positions.entry.x, houseData.positions.entry.y, houseData.positions.entry.z, houseData.positions.entry.w),
                }
            end
        end
    end

    if config.nolag_properties then
        ---{id: number, label: string, price: number, type: string, doorLocked: boolean, coords: vector3|vector4, hasKey: boolean} The properties that are owned by the specified owner.
        local result = tgiCore.Callback.Await('tgiann-multichar:nolag_properties:GetAllProperties', selectedCharData.playerData.citizenid or selectedCharData.playerData.identifier)
        if result then
            for i = 1, #result do
                local propertyData = result[i]
                data[#data + 1] = {
                    label = propertyData.label,
                    desc = "Property",
                    icon = "house.svg",
                    coords = vector4(propertyData.coords.x, propertyData.coords.y, propertyData.coords.z, propertyData.coords.w or 0.0),
                }
            end
        end
    end

    if config.ps_housing then
        local houses = tgiCore.Callback.Await('tgiann-multichar:spawnselector:getOwnedHouses', selectedCharData.playerData.citizenid)
        if houses then
            for i = 1, #houses do
                ---{id: number, label: string, price: number, type: string, doorLocked: boolean, coords: vector3|vector4, hasKey: boolean} The properties that are owned by the specified owner.
                local house     = houses[i]
                data[#data + 1] = {
                    label = (house.apartment or house.street) .. " " .. house.property_id,
                    desc = "Property",
                    icon = "house.svg",
                    coords = type(propertyData.door_data) == "table" and vector4(propertyData.door_data[1].x, propertyData.door_data[1].y, propertyData.door_data[1].z, propertyData.door_data[1].w or 0.0) or vector4(propertyData.door_data.x, propertyData.door_data.y, propertyData.door_data.z, propertyData.door_data.w or 0.0),
                }
            end
        end
    end

    return data
end

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function()
    while not tgiCore.core.GetPlayerData()?.loadout do Wait(100) end -- Wait for esx loadout
    TriggerServerEvent("esx:onPlayerSpawn")
    TriggerEvent("esx:onPlayerSpawn")
    TriggerEvent("playerSpawned")
    TriggerEvent("esx:restoreLoadout")
end)

RegisterNetEvent("tgiann-multichar:multichar:qbCharCreated")
AddEventHandler("tgiann-multichar:multichar:qbCharCreated", function()
    if config.qb_apartments and Apartments?.Starting then
        local apartSpawnmLocations = {}
        for apartType, data in pairs(Apartments.Locations) do
            apartSpawnmLocations[#apartSpawnmLocations + 1] = {
                label = data.label,
                desc = "Apartment",
                icon = "apartment.svg",
                coords = data.coords.enter,
                data = {
                    isApartment = true,
                    apartLabel = data.label,
                    apartType = apartType
                }
            }
        end
        setupSpawns(apartSpawnmLocations, false)
    else
        spawnCharBefore()
        newCharOpened()
        TriggerServerEvent('qb-houses:server:SetInsideMeta', 0, false)
        TriggerServerEvent('qb-apartments:server:SetInsideMeta', 0, 0, false)
    end
end)

RegisterNetEvent("tgiann-multichar:multichar:esxCharCreated")
AddEventHandler("tgiann-multichar:multichar:esxCharCreated", function()
    spawnCharBefore()
    newCharOpened()
end)
