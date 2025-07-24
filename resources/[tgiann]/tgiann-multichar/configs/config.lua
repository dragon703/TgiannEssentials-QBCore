--[[
  - this script needs tgiann-core script to work, you can download the script from your keymaster account
    Start tgiann-core script after es_extented/qb-core script and before tgiann-* scripts
    Adjust the tgiann-core config file according to the framework you are using

    ⚠️ INSTALLATION ⚠️; https://tgiann.gitbook.io/tgiann/scripts/tgiann-multicharacter-+-spawn-selector/installation

]]

tgiCoreExports             = exports["tgiann-core"]
config                     = tgiCoreExports:getConfig()

config.lang                = "en"

config.tgiann_clothing     = GetResourceState("tgiann-clothing") ~= "missing" -- https://tgiann.tebex.io/package/6271462
config.tgiann_house        = GetResourceState("tgiann-house") ~= "missing"    -- https://tgiann.tebex.io/package/4946760
config.qb_apartments       = GetResourceState("qb-apartments") ~= "missing"   -- if you are using qb-aparment, start the multichar script after qb-aparment
config.qb_houses           = GetResourceState("qb-houses") ~= "missing"
config.illenium_appearance = GetResourceState("illenium-appearance") ~= "missing"
config.qs_housing          = GetResourceState("qs-housing") ~= "missing"
config.origen_housing      = GetResourceState("origen_housing") ~= "missing"
config.crm_appearance      = GetResourceState("crm-appearance") ~= "missing"
config.rcore_clothing      = GetResourceState("rcore_clothing") ~= "missing"
config.nolag_properties    = GetResourceState("nolag_properties") ~= "missing"
config.ps_housing          = GetResourceState("ps-housing") ~= "missing"

config.identifier          = {
  column = "license",
  -- if you are using qbox make it type to "license2" because qbox uses license2(you can check from your players table)
  type = "license" -- "license"  -  "steam"  -  "fivem"  -  "discord"
}

config.defaultSpawn        = vector3(-1035.71, -2731.87, 12.86) -- Default spawn coords if you have start apartments disabled on qb or using esx
config.randomHat           = false                              -- Wear random hats on the character on the identy screen
config.face                = {                                  -- Face number of the character on the identy screen - https://imgur.com/JE3gAn6
  male = 4,
  female = 40
}

config.test                = false
config.langs               = {} -- don't change
