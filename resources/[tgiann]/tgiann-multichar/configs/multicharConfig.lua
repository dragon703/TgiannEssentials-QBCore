config.defaultMaxNumberOfCharacters = 5 -- the maximum number of characters that a player can open at the same time (the amount of slots written in the Ui will be displayed)
config.defaultCharactersLimit = 2       -- the maximum number of characters an unauthorized(Discord perm or tebex) player can open
-- if you set config.defaultCharactersLimit to 0, no unauthorized(Discord perm or tebex) character can be opened

config.playersCanDeleteChar = true -- players can delete their character while true

-- When this setting is set to true, pressing the character creation button will change the player's instance (bucket) value, and they will not be able to see other players.
-- If you don't reset this value to 0 in the skin menu, the player will not be able to see any other players.
-- If you're not familiar with script editing, set this to false.
-- If you are, set the player's bucket value to 0 after the character creation process is completed.
config.changePlayerBucketWhenCreatingChar = false

config.discordPermChartersLimit = {
    -- Role id, char limit
    --["1255119086439108609"] = 5,
    --["8218642636218040741"] = 4,
    --["11887194788596450611"] = 3,
    --["11332388648955576421"] = 2,
    --["1133238864895557642"] = 1, -- You may need this if config.defaultCharactersLimit is set to 0
}

config.starterItems = {
    { item = "sandwich", amount = 5 },
    { item = "water_bottle", amount = 5 },
}

config.charMinLenght = {
    firstName = 2,
    lastName = 2,
}

config.deleteTables = { -- table of the data of the player to be deleted in the database when the character is deleted
    esx = {
        {
            table = "users",
            column = "identifier"
        },
        {
            table = "tgiann_multichar_img",
            column = "citizenid"
        }
    },
    qb = {
        {
            table = 'players',
            column = "citizenid"
        },
        {
            table = "tgiann_multichar_img",
            column = "citizenid"
        },
        {
            table = 'apartments',
            column = "citizenid"
        },
        {
            table = 'bank_accounts',
            column = "citizenid"
        },
        {
            table = 'crypto_transactions',
            column = "citizenid"
        },
        {
            table = 'phone_invoices',
            column = "citizenid"
        },
        {
            table = 'phone_messages',
            column = "citizenid"
        },
        {
            table = 'playerskins',
            column = "citizenid"
        },
        {
            table = 'player_contacts',
            column = "citizenid"
        },
        {
            table = 'player_houses',
            column = "citizenid"
        },
        {
            table = 'player_mails',
            column = "citizenid"
        },
        {
            table = 'player_outfits',
            column = "citizenid"
        },
        {
            table = 'player_vehicles',
            column = "citizenid"
        }
    }
}

config.charCreateLocation = vector4(-795.57, 331.79, 201.42, 270.0) -- character creation screen location
config.charCoords = vector3(-1001.8058, -475.1974, 50.0276)         -- a location not visible in the camera :D (your character in the game waits in this position during character selection)
config.characterLocation = {
    {
        pedCoords = vector4(-1009.160034, -475.510010, 49.480003, 213.5338),
        anim = {
            "missheist_jewelleadinout", "jh_int_outro_loop_a"
        },
        camDistance = 2.3,
        heading = 35,
        coordHeight = 0.75,
        camHeight = 0.0,
        leftRightValue = 10,
    },
    {
        pedCoords = vector4(-1007.586975, -480.440826, 50.344086, 328.218201),
        anim = {
            "timetable@reunited@ig_10", "base_amanda"
        },
        camDistance = 1.55,
        heading = 0.0,
        coordHeight = -0.3,
        camHeight = 0.0,
        leftRightValue = 10,
    },
    {
        pedCoords = vector4(-1005.005859, -474.709412, 50.548859, 212.155197),
        anim = {
            "timetable@jimmy@mics3_ig_15@", "idle_a_jimmy"
        },
        camDistance = 2.5,
        heading = -50,
        coordHeight = -0.45,
        camHeight = 0.0,
        leftRightValue = 10,
    },
    {
        pedCoords = vector4(-1006.508362, -479.143127, 50.019527, 144.794296),
        anim = {
            "anim@heists@fleeca_bank@ig_7_jetski_owner", "owner_idle"
        },
        camDistance = 1.5,
        heading = -60,
        coordHeight = -0.6,
        camHeight = 0.0,
        leftRightValue = 10,
    },
    {
        pedCoords = vector4(-1002.8392, -477.7807, 50.0272, 113.3363),
        anim = {
            "anim@amb@carmeet@checkout_car@", "male_e_base"
        },
        camDistance = 2.5,
        heading = -20,
        coordHeight = 0.5,
        camHeight = -0.3,
        leftRightValue = 10,
    }
}


-- Don't edit
if config.tgiann_clothing then
    local data = {
        table = "tgiann_skin",
        column = "citizenid"
    }
    config.deleteTables.esx[#config.deleteTables.esx + 1] = data
    config.deleteTables.qb[#config.deleteTables.qb + 1] = data
end

if GetResourceState("tgiann-inventory") ~= "missing" then
    local data = {
        table = "tgiann_inventory_player",
        column = "citizenid"
    }
    config.deleteTables.esx[#config.deleteTables.esx + 1] = data
    config.deleteTables.qb[#config.deleteTables.qb + 1] = data
end
