if not config.qs_housing then return end
local tgiCore = tgiCoreExports:getCore()

tgiCore.Callback.Register("tgiann-multichar:spawnselector:getQsHousing", function(_, identifier)
    local houses = MySQL.query.await('SELECT hl.coords, hl.label FROM player_houses ph JOIN houselocations hl ON ph.house = hl.name WHERE ph.citizenid = ?', { identifier })
    if houses[1] then
        return houses
    else
        return false
    end
end)
