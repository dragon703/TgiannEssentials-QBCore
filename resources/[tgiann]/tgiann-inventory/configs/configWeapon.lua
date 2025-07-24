config.throwableWeapons = {
    weapon_grenade = true,
    weapon_bzgas = true,
    weapon_molotov = true,
    weapon_flare = true,
    weapon_stickybomb = true,
    weapon_proxmine = true,
    weapon_snowball = true,
    weapon_pipebomb = true,
    weapon_ball = true,
    weapon_smokegrenade = true,
    weapon_acidpackage = true
}

config.removeWeaponWhenEnteringVehicle = false -- Remove the weapon when entering the vehicle

-- Required for police weapons. If the police weapon is added in your items.lua, the assigned jobs can use this weapon. (Police weapons are automatically added to your item list.)
-- Normal weapon: weapon_pistol
-- Police weapon: weapon_police_pistol
config.weaponPoliceJobs = { "police" } -- Jobs that can use police weapons

config.disableWeaponWhip = true        -- Disabling weapon whipping
config.disableWeaponAnimation = false  -- Make this true if you want to disable the holster animation
config.disableWeaponsAnimation = {     -- Holster animation is disabled for weapons added to the list
    weapon_snowball = true,
}

config.weaponAnimation = {
    police = {  -- Job name
        add = { -- Animation of grabbing the weapon in hand and duration (in ms)
            animDictionary = "rcmjosh4",
            animationName = "josh_leadout_cop2",
            time = 300
        },
        remove = { -- Animation of putting the weapon back from hand and duration (in ms)
            animDictionary = "reaction@intimidation@cop@unarmed",
            animationName = "intro",
            time = 250
        },
    },
    otherJobs = { -- OTHER JOBS than the ones above ^
        add = {   --  Animation of grabbing the weapon in hand and duration (in ms)
            animDictionary = "reaction@intimidation@1h",
            animationName = "intro",
            time = 1200
        },
        remove = { -- Animation of putting the weapon back from hand and duration (in ms)
            animDictionary = "reaction@intimidation@1h",
            animationName = "outro",
            time = 1200
        },
    }
}

-- Add here the weapons that cannot be picked up in the vehicle in gta, that is, weapons that cannot be fired from inside the vehicle
-- You can pick up the weapons you add here while you are in the vehicle, so that when you get out of the vehicle, the weapon is in your hand.
config.bigWeapons = {
    [`weapon_smg`] = true,
    [`weapon_smg_mk2`] = true,
    [`weapon_assaultsmg`] = true,
    [`weapon_combatpdw`] = true,
    [`weapon_raycarbine`] = true,
    [`weapon_pumpshotgun`] = true,
    [`weapon_pumpshotgun_mk2`] = true,
    [`weapon_sawnoffshotgun`] = true,
    [`weapon_assaultshotgun`] = true,
    [`weapon_bullpupshotgun`] = true,
    [`weapon_musket`] = true,
    [`weapon_heavyshotgun`] = true,
    [`weapon_dbshotgun`] = true,
    [`weapon_autoshotgun`] = true,
    [`weapon_assaultrifle`] = true,
    [`weapon_assaultrifle_mk2`] = true,
    [`weapon_carbinerifle`] = true,
    [`weapon_carbinerifle_mk2`] = true,
    [`weapon_advancedrifle`] = true,
    [`weapon_specialcarbine`] = true,
    [`weapon_specialcarbine_mk2`] = true,
    [`weapon_bullpuprifle`] = true,
    [`weapon_bullpuprifle_mk2`] = true,
    [`weapon_compactrifle`] = true,
    [`weapon_mg`] = true,
    [`weapon_combatmg`] = true,
    [`weapon_combatmg_mk2`] = true,
    [`weapon_gusenberg`] = true,
    [`weapon_sniperrifle`] = true,
    [`weapon_heavysniper`] = true,
    [`weapon_heavysniper_mk2`] = true,
    [`weapon_marksmanrifle`] = true,
    [`weapon_marksmanrifle_mk2`] = true,
    [`weapon_rpg`] = true,
    [`weapon_grenadelauncher`] = true,
    [`weapon_grenadelauncher_smoke`] = true,
    [`weapon_minigun`] = true,
    [`weapon_firework`] = true,
    [`weapon_railgun`] = true,
    [`weapon_hominglauncher`] = true,
    [`weapon_compactlauncher`] = true,
    [`weapon_rayminigun`] = true,
    [`weapon_dagger`] = true,
    [`weapon_bat`] = true,
    [`weapon_bottle`] = true,
    [`weapon_crowbar`] = true,
    [`weapon_unarmed`] = true,
    [`weapon_flashlight`] = true,
    [`weapon_golfclub`] = true,
    [`weapon_hammer`] = true,
    [`weapon_hatchet`] = true,
    [`weapon_knuckle`] = true,
    [`weapon_knife`] = true,
    [`weapon_machete`] = true,
    [`weapon_switchblade`] = true,
    [`weapon_nightstick`] = true,
    [`weapon_wrench`] = true,
    [`weapon_battleaxe`] = true,
    [`weapon_poolcue`] = true,
    [`weapon_stone_hatchet`] = true,
}

-- Weapon Durabilty Values (Shooting max ammo before breaking)
local weaponList = {
    -- Handguns
    weapon_stungun               = 100,
    weapon_pistol                = 500,
    weapon_pistol_mk2            = 500,
    weapon_combatpistol          = 500,
    weapon_appistol              = 500,
    weapon_pistol50              = 500,
    weapon_snspistol             = 500,
    weapon_heavypistol           = 500,
    weapon_vintagepistol         = 500,
    weapon_flaregun              = 500,
    weapon_marksmanpistol        = 500,
    weapon_revolver              = 500,
    weapon_revolver_mk2          = 500,
    weapon_doubleaction          = 500,
    weapon_snspistol_mk2         = 500,
    weapon_raypistol             = 500,
    weapon_ceramicpistol         = 500,
    weapon_navyrevolver          = 500,
    weapon_gadgetpistol          = 500,
    weapon_pistolxm3             = 500,
    -- Submachine Guns
    weapon_microsmg              = 1000,
    weapon_smg                   = 1000,
    weapon_smg_mk2               = 1000,
    weapon_assaultsmg            = 1000,
    weapon_combatpdw             = 1000,
    weapon_machinepistol         = 1000,
    weapon_minismg               = 1000,
    weapon_raycarbine            = 1000,
    -- Shotguns
    weapon_pumpshotgun           = 150,
    weapon_sawnoffshotgun        = 150,
    weapon_assaultshotgun        = 150,
    weapon_bullpupshotgun        = 150,
    weapon_musket                = 150,
    weapon_heavyshotgun          = 150,
    weapon_dbshotgun             = 150,
    weapon_autoshotgun           = 150,
    weapon_pumpshotgun_mk2       = 150,
    weapon_combatshotgun         = 150,
    -- Assault Rifles
    weapon_assaultrifle          = 2000,
    weapon_assaultrifle_mk2      = 2000,
    weapon_carbinerifle          = 2000,
    weapon_carbinerifle_mk2      = 2000,
    weapon_advancedrifle         = 2000,
    weapon_specialcarbine        = 2000,
    weapon_bullpuprifle          = 2000,
    weapon_compactrifle          = 2000,
    weapon_specialcarbine_mk2    = 2000,
    weapon_bullpuprifle_mk2      = 2000,
    weapon_militaryrifle         = 2000,
    -- Light Machine Guns
    weapon_mg                    = 3000,
    weapon_combatmg              = 3000,
    weapon_gusenberg             = 3000,
    weapon_combatmg_mk2          = 3000,
    -- Sniper Rifles
    weapon_sniperrifle           = 50,
    weapon_heavysniper           = 50,
    weapon_marksmanrifle         = 50,
    weapon_remotesniper          = 50,
    weapon_heavysniper_mk2       = 50,
    weapon_marksmanrifle_mk2     = 50,
    -- Heavy Weapons
    weapon_rpg                   = 10,
    weapon_grenadelauncher       = 10,
    weapon_grenadelauncher_smoke = 10,
    weapon_minigun               = 10,
    weapon_firework              = 10,
    weapon_railgun               = 10,
    weapon_railgunxm3            = 10,
    weapon_hominglauncher        = 10,
    weapon_compactlauncher       = 10,
    weapon_rayminigun            = 10,
}

-- Melee Weapons Durabilty Values (second)
local meleeList = {
    weapon_dagger = 432000,
    weapon_bat = 432000,
    weapon_bottle = 432000,
    weapon_crowbar = 432000,
    weapon_unarmed = 432000,
    weapon_flashlight = 432000,
    weapon_golfclub = 432000,
    weapon_hammer = 432000,
    weapon_hatchet = 432000,
    weapon_knuckle = 432000,
    weapon_knife = 432000,
    weapon_machete = 432000,
    weapon_switchblade = 432000,
    weapon_nightstick = 432000,
    weapon_wrench = 432000,
    weapon_battleaxe = 432000,
    weapon_poolcue = 432000,
    weapon_stone_hatchet = 432000,
    weapon_candycane = 432000,
    weapon_stunrod = 432000,
}

config.weaponBreakAmount = {}      -- Don't change
config.maleeWeaponBreakAmount = {} -- Don't change

for weapon, int in pairs(weaponList) do
    config.weaponBreakAmount[weapon] = int
    config.weaponBreakAmount[weapon:gsub("weapon_", "weapon_police_")] = int
end

for weapon, int in pairs(meleeList) do
    config.maleeWeaponBreakAmount[weapon] = int
    config.maleeWeaponBreakAmount[weapon:gsub("weapon_", "weapon_police_")] = int
end
