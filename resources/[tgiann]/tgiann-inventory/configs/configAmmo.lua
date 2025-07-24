--[[
Update Video: https://youtu.be/DeWn_e7cZwE
1 : To load bullets into the gun, you must use the bullet item. When used, it will load bullets based on the `config.ammo.ammo` value.
2 : Pressing the R key reloads bullets from your inventory up to the weapon's magazine limit. For example, if the magazine limit is 30, it will deduct 30 bullets from your inventory and load them into the clip.
]]
config.ammoSystem = 2                   -- 1 or 2

config.clearAnimationWhenReload = false -- when true, the animation will be cleared when reloading
config.disableStunGunAmmo = false       -- when true, stungun works like in gta

config.reloadProgressbarBar = {
    time = 2000,
    disables = {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }
}

config.ammo = {
    {
        ammoType = "AMMO_STUNGUN",
        item = "stungun_ammo",
        ammo = 2,            -- Only works on ammoSystem 1
        maxAmmoInWeapon = 2, -- Only works on ammoSystem 1
        isStunGun = true,
    },
    {
        ammoType = "AMMO_PISTOL",
        item = "pistol_ammo",
        ammo = 30,            -- Only works on ammoSystem 1
        maxAmmoInWeapon = 250 -- Only works on ammoSystem 1
    },
    {
        ammoType = "AMMO_SMG",
        item = "smg_ammo",
        ammo = 30,            -- Only works on ammoSystem 1
        maxAmmoInWeapon = 250 -- Only works on ammoSystem 1
    },
    {
        ammoType = "AMMO_SHOTGUN",
        item = "shotgun_ammo",
        ammo = 30,            -- Only works on ammoSystem 1
        maxAmmoInWeapon = 250 -- Only works on ammoSystem 1
    },
    {
        ammoType = "AMMO_RIFLE",
        item = "rifle_ammo",
        ammo = 30,            -- Only works on ammoSystem 1
        maxAmmoInWeapon = 250 -- Only works on ammoSystem 1
    },
    {
        ammoType = "AMMO_SNIPER",
        item = "snp_ammo",
        ammo = 4,             -- Only works on ammoSystem 1
        maxAmmoInWeapon = 250 -- Only works on ammoSystem 1
    },
    {
        ammoType = "AMMO_MG",
        item = "mg_ammo",
        ammo = 120,           -- Only works on ammoSystem 1
        maxAmmoInWeapon = 250 -- Only works on ammoSystem 1
    },
    -- POLICE
    {
        ammoType = "AMMO_POLICE_STUNGUN",
        item = "police_stungun_ammo",
        ammo = 2,            -- Only works on ammoSystem 1
        maxAmmoInWeapon = 2, -- Only works on ammoSystem 1
        isStunGun = true,
    },
    {
        ammoType = "AMMO_POLICE_PISTOL",
        item = "police_pistol_ammo",
        ammo = 120,           -- Only works on ammoSystem 1
        maxAmmoInWeapon = 250 -- Only works on ammoSystem 1
    },
    {
        ammoType = "AMMO_POLICE_SMG",
        item = "police_smg_ammo",
        ammo = 120,           -- Only works on ammoSystem 1
        maxAmmoInWeapon = 250 -- Only works on ammoSystem 1
    },
    {
        ammoType = "AMMO_POLICE_SHOTGUN",
        item = "police_shotgun_ammo",
        ammo = 30,            -- Only works on ammoSystem 1
        maxAmmoInWeapon = 250 -- Only works on ammoSystem 1
    },
    {
        ammoType = "AMMO_POLICE_RIFLE",
        item = "police_rifle_ammo",
        ammo = 120,           -- Only works on ammoSystem 1
        maxAmmoInWeapon = 250 -- Only works on ammoSystem 1
    },
}
