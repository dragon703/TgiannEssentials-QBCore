-- headerClickMainFunction and headerClickShopFunction are test functions, you may need to edit them or delete them from config
function headerClickMainFunction()
    --[[
    -- Example
    CloseInventory()
    while IsNuiFocused() do Wait(100) end
    exports["tgiann-esc"]:open() ]]
    tgiCore.notif("I'm test button please edit me from client/topHeader.lua", 10000, "error")
end

function headerClickShopFunction()
    --exports["tgiann-coinshop"]:openUi() -- Example
    tgiCore.notif("I'm test button please edit me from client/topHeader.lua", 10000, "error")
end

function headerClickSettingsFunction()
    CloseInventory()
    while IsNuiFocused() do Wait(100) end
    ActivateFrontendMenu(`FE_MENU_VERSION_LANDING_MENU`, 0, -1)
end

function headerClickCraftFunction()
    TriggerEvent("tgiann-inventory:craft:openDefault")
end

RegisterNUICallback("headerClick", function(funcName, cb)
    _G[funcName]()
    cb("")
end)
