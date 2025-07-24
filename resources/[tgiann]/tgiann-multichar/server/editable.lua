local tgiCore = tgiCoreExports:getCore()
tgiCore.VersionCheck('tgiann-core', '4.16.1')

local function getPlayerLicense(src, sub)
    local isType2 = false
    local license = GetPlayerIdentifierByType(src, config.identifier.type)
    if not license then
        isType2 = true
        license = GetPlayerIdentifierByType(src, "license")
    end
    return sub and license:gsub(string.format("%s:", isType2 and "license" or config.identifier.type), "") or license
end

local function GiveStarterItems(src)
    SetTimeout(3000, function() -- Wait for the player to be fully loaded
        local Player = tgiCore.getPlayer(src)
        for i = 1, #config.starterItems do
            local info = {}
            local item = config.starterItems[i]
            if item.item == "id_card" then
                info.citizenid = Player.PlayerData.citizenid
                info.firstname = Player.PlayerData.charinfo.firstname
                info.lastname = Player.PlayerData.charinfo.lastname
                info.birthdate = Player.PlayerData.charinfo.birthdate
                info.gender = Player.PlayerData.charinfo.gender
                info.nationality = Player.PlayerData.charinfo.nationality
            elseif item.item == "driver_license" then
                info.firstname = Player.PlayerData.charinfo.firstname
                info.lastname = Player.PlayerData.charinfo.lastname
                info.birthdate = Player.PlayerData.charinfo.birthdate
                info.type = "Class C Driver License"
            end
            tgiCore.addItem(Player, item.item, item.amount, false, info)
        end
    end)
end

-- For QB
local function loadHouseData(src)
    if GetResourceState("qb-houses") ~= "started" then return end
    local HouseGarages = {}
    local Houses = {}
    local result = MySQL.query.await('SELECT * FROM houselocations', {})
    if result[1] ~= nil then
        for _, v in pairs(result) do
            local owned = false
            if tonumber(v.owned) == 1 then
                owned = true
            end
            local garage = v.garage ~= nil and json.decode(v.garage) or {}
            Houses[v.name] = {
                coords = json.decode(v.coords),
                owned = owned,
                price = v.price,
                locked = true,
                adress = v.label,
                tier = v.tier,
                garage = garage,
                decorations = {},
            }
            HouseGarages[v.name] = {
                label = v.label,
                takeVehicle = garage,
            }
        end
    end
    TriggerClientEvent("qb-garages:client:houseGarageConfig", src, HouseGarages)
    TriggerClientEvent("qb-houses:client:setHouseConfig", src, Houses)
end

tgiCore.Callback.Register('tgiann-multichar:spawnselector:getOwnedHouses', function(_, cid)
    local houses = MySQL.query.await('SELECT * FROM player_houses WHERE citizenid = ?', { cid })
    return houses
end)

local function getSkinData(identifier)
    local skinData
    if config.tgiann_clothing then
        local result = MySQL.single.await('SELECT `skin`, `model` FROM `tgiann_skin` WHERE `citizenid` = ?', { identifier })
        if result?.model and result?.skin then
            skinData = {
                model = result.model,
                skin = json.decode(result.skin)
            }
        end
    elseif config.illenium_appearance then
        local result = MySQL.single.await('SELECT * FROM playerskins WHERE citizenid = ? AND active = 1', { identifier })
        if result then
            local skin = json.decode(result.skin)
            skinData = {
                model = skin.model and joaat(skin.model) or `mp_m_freemode_01`,
                skin = skin,
            }
        end
    elseif config.rcore_clothing then
        local skin = exports.rcore_clothing:getSkinByIdentifier(identifier)
        if skin then
            skinData = {
                model = skin.ped_model,
                skin = skin.skin
            }
        end
    elseif config.framework == "qb" then -- CRM Using same table as qb-clothing
        local result = MySQL.single.await('SELECT `skin`, `model` FROM playerskins WHERE citizenid = ? AND active = ?', { identifier, 1 })
        skinData = {
            model = result?.model or `mp_m_freemode_01`,
            skin = result?.skin and json.decode(result.skin) or {}
        }
    elseif config.framework == "esx" then -- CRM Using same table as skin
        local result = MySQL.single.await('SELECT `skin`, `sex` FROM users WHERE identifier = ?', { identifier })
        skinData = {
            model = result?.sex == "m" and `mp_m_freemode_01` or `mp_f_freemode_01`,
            skin = result?.skin and json.decode(result.skin) or {}
        }
    end
    return skinData
end

function getPlayerChars(src)
    local charData = {}
    local identifier = getPlayerLicense(src, true)
    if config.framework == "esx" then
        local response = MySQL.query.await('SELECT `identifier`, `accounts`, `firstname`, `lastname`, `dateofbirth`, `sex`, `job`, `height`, `position` FROM `users` WHERE `identifier` LIKE @identifier', {
            ["@identifier"] = "%" .. identifier
        })

        for i = 1, #response do
            local data = response[i]
            data.accounts = json.decode(data.accounts)
            local _, _, number = string.find(data.identifier, "char(%d+):")
            local index = tonumber(number)
            if index then
                local jobLabel = MySQL.single.await('SELECT `label` FROM `jobs` WHERE `name` = ? LIMIT 1', { data.job })
                charData[index] = {
                    playerData = {
                        index = index,
                        identifier = data.identifier,
                        name = (data.firstname or "") .. " " .. (data.lastname or ""),
                        job = jobLabel.label,
                        lastLocation = json.decode(data.position)
                    },
                    uiData = {
                        {
                            icon = "bank.svg",
                            label = lang.bank,
                            value = tgiCore.FormatNum(data.accounts.bank) .. "$"
                        },
                        {
                            icon = "money.svg",
                            label = lang.money,
                            value = tgiCore.FormatNum(data.accounts.money) .. "$"
                        },
                        {
                            icon = "dob.svg",
                            label = lang.dateOfBirth,
                            value = data.dateofbirth
                        },
                        {
                            icon = "sex.svg",
                            label = lang.sex,
                            value = data.sex == "m" and lang.sexMale or lang.sexFemale
                        },
                        {
                            icon = "height.svg",
                            label = lang.height,
                            value = data.height .. "cm"
                        },
                    }
                }

                local imgData = MySQL.single.await('SELECT `img` FROM `tgiann_multichar_img` WHERE `citizenid` = ?', { data.identifier })
                charData[index].playerData.img = imgData?.img

                charData[index].skinData = getSkinData(data.identifier)
            else
                print(data.identifier .. " id is not registered in the multichar system, delete this character")
            end
        end
    elseif config.framework == "qb" then
        local license = getPlayerLicense(src)
        local response = MySQL.query.await('SELECT `citizenid`, `cid`, `' .. config.identifier.column .. '`, `money`, `charinfo`, `job`, `position` FROM `players` WHERE `' .. config.identifier.column .. '` = ?', {
            license
        })

        for i = 1, #response do
            local data = response[i]
            data.charinfo = json.decode(data.charinfo)
            data.money = json.decode(data.money)
            data.job = json.decode(data.job)
            local index = tonumber(data.cid)
            charData[index] = {
                playerData = {
                    index = index,
                    citizenid = data.citizenid,
                    identifier = data[config.identifier.column],
                    name = data.charinfo.firstname .. " " .. data.charinfo.lastname,
                    job = data.job.label,
                    lastLocation = json.decode(data.position)
                },
                uiData = {
                    {
                        icon = "bank.svg",
                        label = lang.bank,
                        value = tgiCore.FormatNum(data.money.bank) .. "$"
                    },
                    {
                        icon = "money.svg",
                        label = lang.money,
                        value = tgiCore.FormatNum(data.money.cash) .. "$"
                    },
                    {
                        icon = "dob.svg",
                        label = lang.dateOfBirth,
                        value = data.charinfo.birthdate
                    },
                    {
                        icon = "sex.svg",
                        label = lang.sex,
                        value = data.charinfo.gender == 0 and lang.sexMale or lang.sexFemale
                    },
                }
            }

            local imgData = MySQL.single.await('SELECT `img` FROM `tgiann_multichar_img` WHERE `citizenid` = ?', { data.citizenid })
            charData[index].playerData.img = imgData?.img

            charData[index].skinData = getSkinData(data.citizenid)
        end
    end
    return charData
end

function getPlayerCharAmounts(src)
    local identifier = getPlayerLicense(src)
    if config.framework == "esx" then
        local esxIdentifier = identifier:gsub(string.format("%s:", config.identifier.type), "")
        result = MySQL.single.await('SELECT COUNT(*) FROM users WHERE `identifier` LIKE @identifier', { ["@identifier"] = "%" .. esxIdentifier })
    elseif config.framework == "qb" then
        result = MySQL.single.await('SELECT COUNT(*) FROM players WHERE `' .. config.identifier.column .. '` = ?', { identifier })
    end
    return result["COUNT(*)"]
end

tgiCore.Callback.Register("tgiann-multichar:multichar:deleteChar", function(source, playerData)
    local src = source
    local playerIdentifier = getPlayerLicense(src)

    local identifier = config.framework == "esx" and playerData.identifier or playerData.citizenid

    if config.framework == "esx" then
        if removeBeforeDelimiter(identifier, ":") ~= removeBeforeDelimiter(playerIdentifier, ":") then
            print(("[^8ANTI-CHEAT^7] Player ^5%s %s (%s)^7 tried to delete another player's character"):format(GetPlayerName(src), src, playerIdentifier))
            DropPlayer(src, "Tried to delete another player's character")
            return false
        end
    elseif config.framework == "qb" then
        local result = MySQL.scalar.await('SELECT ' .. config.identifier.column .. ' FROM players where citizenid = ?', { playerData.citizenid })
        if playerIdentifier ~= result then
            print(("[^8ANTI-CHEAT^7] Player ^5%s %s (%s)^7 tried to delete another player's character"):format(GetPlayerName(src), src, playerIdentifier))
            DropPlayer(src, "Tried to delete another player's character")
            return false
        end
    end

    local query = "DELETE FROM `%s` WHERE %s = ?"
    local queries = {}

    local deleteTables = config.deleteTables[config.framework]
    for i = 1, #deleteTables do
        local deleteTable = deleteTables[i]
        queries[#queries + 1] = { query = query:format(deleteTable.table, deleteTable.column), values = { identifier } }
    end

    local result = MySQL.transaction.await(queries)
    if result then
        print(("[^2INFO^7] Player ^5%s %s^7 has deleted a character ^5(%s)^7"):format(GetPlayerName(src), src, identifier))
        return true
    else
        error("\n^1Transaction failed while trying to delete " .. identifier .. "^0")
        return false
    end
end)

RegisterNetEvent("tgiann-multichar:multichar:createChar")
AddEventHandler("tgiann-multichar:multichar:createChar", function(charData)
    local src = source
    if config.changePlayerBucketWhenCreatingChar then SetPlayerRoutingBucket(src, src) end
    if config.framework == "esx" then
        local data = {
            firstname = charData.firstName,
            lastname = charData.lastName,
            dateofbirth = string.format("%s/%s/%s", charData.day, charData.month, charData.year),
            sex = charData.isMale and "m" or "f",
            height = charData.height
        }
        local charId = string.format("char%s", charData.createCharIndex)
        TriggerEvent("esx:onPlayerJoined", src, charId, data)
        TriggerClientEvent("tgiann-multichar:multichar:esxCharCreated", src)
    elseif config.framework == "qb" then
        local newData = {}
        newData.cid = charData.createCharIndex
        newData.charinfo = {
            firstname = charData.firstName,
            lastname = charData.lastName,
            nationality = "",
            birthdate = string.format("%s/%s/%s", charData.day, charData.month, charData.year),
            gender = charData.isMale and 0 or 1,
            height = charData.height,
            cid = charData.createCharIndex
        }

        if tgiCore.core.Player.Login(src, false, newData) then
            if config.qb_apartments and Apartments?.Starting then
                tgiCore.core.Commands.Refresh(src)
                loadHouseData(src)
                TriggerClientEvent("tgiann-multichar:multichar:qbCharCreated", src, newData)
            else
                tgiCore.core.Commands.Refresh(src)
                loadHouseData(src)
                TriggerClientEvent("tgiann-multichar:multichar:qbCharCreated", src, newData)
            end
        end
    end
    GiveStarterItems(src)
end)

tgiCore.Callback.Register("tgiann-multichar:spawnselector:CharacterChosen", function(source, identifier)
    local src = source
    if config.framework == "esx" then
        TriggerEvent("esx:onPlayerJoined", src, removeAfterDelimiter(identifier, ":"))
        return ""
    else
        if tgiCore.core.Player.Login(src, identifier) then
            tgiCore.core.Commands.Refresh(src)
            loadHouseData(src)
            return ""
        end
    end
end)

function playerLogout(src)
    if config.framework == "esx" then
        TriggerEvent("esx:playerLogout", src)
    else
        tgiCore.core.Player.Logout(src)
    end
    TriggerClientEvent("tgiann_multichar:multichar:client:logout", src)
end

RegisterNetEvent("tgiann_multichar:logout")
AddEventHandler("tgiann_multichar:logout", function()
    playerLogout(source)
end)
exports("Logout", playerLogout)

-- the player increases the character unlock slot by one with each purchase
RegisterCommand("tbx_multichar_limit", function(source, args)
    if source > 0 then return end
    local tbxId = args[1]
    local customerId = args[2]
    local serverId = tonumber(args[3])
    local identifier = getPlayerLicense(serverId)

    MySQL.insert('INSERT INTO tgiann_multichar (identifier, customerId) VALUES (?, ?) ON DUPLICATE KEY UPDATE `limit`=`limit`+1', {
        identifier,
        customerId,
    })
end)

if config.framework == "esx" then
    local oneSyncState = GetConvar("onesync", "off")
    local esxEnableDebug = tgiCore.core.GetConfig().EnableDebug

    AddEventHandler("playerConnecting", function(_, _, deferrals)
        deferrals.defer()
        local src = source
        local identifier = removeBeforeDelimiter(getPlayerLicense(src), ":")

        if not identifier then
            return deferrals.done(("Unable to retrieve player identifier.\nIdentifier type: %s"):format(config.identifier.type))
        end

        if oneSyncState == "off" or oneSyncState == "legacy" then
            return deferrals.done(("[ESX] ESX Requires Onesync Infinity to work. This server currently has Onesync set to: %s"):format(oneSyncState))
        end

        if not esxEnableDebug and tgiCore.core.Players[identifier] then
            return deferrals.done(("[TGIANN Multichar] A player is already connected to the server with this identifier.\nYour identifier: %s:%s"):format(config.identifier.type, identifier))
        end

        deferrals.done()
    end)
elseif config.framework == "qb" then
    tgiCore.Callback.Register('tgiann-multichar:apartments:GetOwnedApartment', function(src, cid)
        if cid then
            local result = MySQL.query.await('SELECT * FROM apartments WHERE citizenid = ?', { cid })
            return result[1]
        else
            local Player = tgiCore.getPlayer(src)
            local result = MySQL.query.await('SELECT * FROM apartments WHERE citizenid = ?', { Player.PlayerData.citizenid })
            return result[1]
        end
    end)
end

if config.nolag_properties then
    tgiCore.Callback.Register("tgiann-multichar:nolag_properties:GetAllProperties", function(_, identifier)
        return exports.nolag_properties:GetAllProperties(identifier, "user")
    end)
end

if config.ps_housing then
    tgiCore.Callback.Register("tgiann-multichar:ps_housing:getPlayerHousesAndApart", function(_, identifier)
        return MySQL.query.await('SELECT * FROM properties WHERE owner_citizenid = ?', { cid })
    end)
end
