local tgiCore = tgiCoreExports:getCore()
local adminPerm = config.tgiannServer and { "tgi" } or config.framework == "qb" and "god" or "admin"

tgiCore.CommandsAdd("logout", "Logout of Character (Admin Only)", {}, false, function(source)
    playerLogout(source)
end, adminPerm)
