local weaponsList = {
    -- Melee
    weapon_unarmed               = { name = 'weapon_unarmed', label = 'Fists', weight = 1000, ammotype = nil, image = 'placeholder.webp', description = 'Fisticuffs' },
    weapon_dagger                = { name = 'weapon_dagger', label = 'Dagger', weight = 1000, ammotype = nil, image = 'weapon_dagger.webp', description = 'A short knife with a pointed and edged blade, used as a weapon' },
    weapon_bat                   = { name = 'weapon_bat', label = 'Bat', weight = 1000, ammotype = nil, image = 'weapon_bat.webp', description = 'Used for hitting a ball in sports (or other things)' },
    weapon_bottle                = { name = 'weapon_bottle', label = 'Broken Bottle', weight = 1000, ammotype = nil, image = 'weapon_bottle.webp', description = 'A broken bottle' },
    weapon_crowbar               = { name = 'weapon_crowbar', label = 'Crowbar', weight = 1000, ammotype = nil, image = 'weapon_crowbar.webp', description = 'An iron bar with a flattened end, used as a lever' },
    weapon_flashlight            = { name = 'weapon_flashlight', label = 'Flashlight', weight = 1000, ammotype = nil, image = 'weapon_flashlight.webp', description = 'A battery-operated portable light' },
    weapon_golfclub              = { name = 'weapon_golfclub', label = 'Golfclub', weight = 1000, ammotype = nil, image = 'weapon_golfclub.webp', description = 'A club used to hit the ball in golf' },
    weapon_hammer                = { name = 'weapon_hammer', label = 'Hammer', weight = 1000, ammotype = nil, image = 'weapon_hammer.webp', description = 'Used for jobs such as breaking things (legs) and driving in nails' },
    weapon_hatchet               = { name = 'weapon_hatchet', label = 'Hatchet', weight = 1000, ammotype = nil, image = 'weapon_hatchet.webp', description = 'A small axe with a short handle for use in one hand' },
    weapon_knuckle               = { name = 'weapon_knuckle', label = 'Knuckle', weight = 1000, ammotype = nil, image = 'weapon_knuckle.webp', description = 'A metal guard worn over the knuckles in fighting, especially to increase the effect of the blows' },
    weapon_knife                 = { name = 'weapon_knife', label = 'Knife', weight = 1000, ammotype = nil, image = 'weapon_knife.webp', description = 'An instrument composed of a blade fixed into a handle, used for cutting or as a weapon' },
    weapon_machete               = { name = 'weapon_machete', label = 'Machete', weight = 1000, ammotype = nil, image = 'weapon_machete.webp', description = 'A broad, heavy knife used as a weapon' },
    weapon_switchblade           = { name = 'weapon_switchblade', label = 'Switchblade', weight = 1000, ammotype = nil, image = 'weapon_switchblade.webp', description = 'A knife with a blade that springs out from the handle when a button is pressed' },
    weapon_nightstick            = { name = 'weapon_nightstick', label = 'Nightstick', weight = 1000, ammotype = nil, image = 'weapon_nightstick.webp', description = 'A police officer\'s club or billy' },
    weapon_wrench                = { name = 'weapon_wrench', label = 'Wrench', weight = 1000, ammotype = nil, image = 'weapon_wrench.webp', description = 'A tool used for gripping and turning nuts, bolts, pipes, etc' },
    weapon_battleaxe             = { name = 'weapon_battleaxe', label = 'Battle Axe', weight = 1000, ammotype = nil, image = 'weapon_battleaxe.webp', description = 'A large broad-bladed axe used in ancient warfare' },
    weapon_poolcue               = { name = 'weapon_poolcue', label = 'Poolcue', weight = 1000, ammotype = nil, image = 'weapon_poolcue.webp', description = 'A stick used to strike a ball, usually the cue ball (or other things)' },
    weapon_briefcase             = { name = 'weapon_briefcase', label = 'Briefcase', weight = 1000, ammotype = nil, image = 'weapon_briefcase.webp', description = 'A briefcase for storing important documents' },
    weapon_briefcase_02          = { name = 'weapon_briefcase_02', label = 'Suitcase', weight = 1000, ammotype = nil, image = 'weapon_briefcase2.webp', description = 'Wonderfull for nice vacation to Liberty City' },
    weapon_garbagebag            = { name = 'weapon_garbagebag', label = 'Garbage Bag', weight = 1000, ammotype = nil, image = 'weapon_garbagebag.webp', description = 'A garbage bag' },
    weapon_handcuffs             = { name = 'weapon_handcuffs', label = 'Handcuffs', weight = 1000, ammotype = nil, image = 'weapon_handcuffs.webp', description = 'A pair of lockable linked metal rings for securing a prisoner\'s wrists' },
    weapon_bread                 = { name = 'weapon_bread', label = 'Baquette', weight = 1000, ammotype = nil, image = 'baquette.webp', description = 'Bread...?' },
    weapon_stone_hatchet         = { name = 'weapon_stone_hatchet', label = 'Stone Hatchet', weight = 1000, ammotype = nil, image = 'weapon_stone_hatchet.webp', description = 'Stone Hatchet' },
    weapon_candycane             = { name = 'weapon_candycane', label = 'Candy Cane', weight = 1000, ammotype = nil, image = 'weapon_candycane', description = 'Candy Cane' },

    -- Handguns
    weapon_pistol                = { name = 'weapon_pistol', label = 'Walther P99', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_pistol.webp', description = 'A small firearm designed to be held in one hand' },
    weapon_pistol_mk2            = { name = 'weapon_pistol_mk2', label = 'Pistol Mk II', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_pistol_mk2.webp', description = 'An upgraded small firearm designed to be held in one hand' },
    weapon_combatpistol          = { name = 'weapon_combatpistol', label = 'Combat Pistol', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_combatpistol.webp', description = 'A combat version small firearm designed to be held in one hand' },
    weapon_appistol              = { name = 'weapon_appistol', label = 'AP Pistol', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_appistol.webp', description = 'A small firearm designed to be held in one hand that is automatic' },
    weapon_stungun               = { name = 'weapon_stungun', label = 'Taser', weight = 1000, ammotype = 'AMMO_STUNGUN', image = 'weapon_stungun.webp', description = 'A weapon firing barbs attached by wires to batteries, causing temporary paralysis' },
    weapon_pistol50              = { name = 'weapon_pistol50', label = 'Pistol .50', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_pistol50.webp', description = 'A .50 caliber firearm designed to be held with both hands' },
    weapon_snspistol             = { name = 'weapon_snspistol', label = 'SNS Pistol', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_snspistol.webp', description = 'A very small firearm designed to be easily concealed' },
    weapon_heavypistol           = { name = 'weapon_heavypistol', label = 'Heavy Pistol', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_heavypistol.webp', description = 'A hefty firearm designed to be held in one hand (or attempted)' },
    weapon_vintagepistol         = { name = 'weapon_vintagepistol', label = 'Vintage Pistol', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_vintagepistol.webp', description = 'An antique firearm designed to be held in one hand' },
    weapon_flaregun              = { name = 'weapon_flaregun', label = 'Flare Gun', weight = 1000, ammotype = 'AMMO_FLARE', image = 'weapon_flaregun.webp', description = 'A handgun for firing signal rockets' },
    weapon_marksmanpistol        = { name = 'weapon_marksmanpistol', label = 'Marksman Pistol', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_marksmanpistol.webp', description = 'A very accurate small firearm designed to be held in one hand' },
    weapon_revolver              = { name = 'weapon_revolver', label = 'Revolver', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_revolver.webp', description = 'A pistol with revolving chambers enabling several shots to be fired without reloading' },
    weapon_revolver_mk2          = { name = 'weapon_revolver_mk2', label = 'Violence', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_revolver_mk2.webp', description = 'da Violence' },
    weapon_doubleaction          = { name = 'weapon_doubleaction', label = 'Double Action Revolver', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_doubleaction.webp', description = 'Double Action Revolver' },
    weapon_snspistol_mk2         = { name = 'weapon_snspistol_mk2', label = 'SNS Pistol Mk II', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_snspistol_mk2.webp', description = 'SNS Pistol MK2' },
    weapon_raypistol             = { name = 'weapon_raypistol', label = 'Up-n-Atomizer', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_raypistol.webp', description = 'Weapon Raypistol' },
    weapon_ceramicpistol         = { name = 'weapon_ceramicpistol', label = 'Ceramic Pistol', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_ceramicpistol.webp', description = 'Weapon Ceramicpistol' },
    weapon_navyrevolver          = { name = 'weapon_navyrevolver', label = 'Navy Revolver', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_navyrevolver.webp', description = 'Weapon Navyrevolver' },
    weapon_gadgetpistol          = { name = 'weapon_gadgetpistol', label = 'Perico Pistol', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_gadgetpistol.webp', description = 'Weapon Gadgetpistol' },
    weapon_pistolxm3             = { name = 'weapon_pistolxm3', label = 'Pistol XM3', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_pistolxm3.webp', description = 'Pistol XM3' },

    -- Submachine Guns
    weapon_microsmg              = { name = 'weapon_microsmg', label = 'Micro SMG', weight = 1000, ammotype = 'AMMO_SMG', image = 'weapon_microsmg.webp', description = 'A handheld light                                                                                                                                                                                                                                                                                                                                                            weight machine gun' },
    weapon_smg                   = { name = 'weapon_smg', label = 'SMG', weight = 1000, ammotype = 'AMMO_SMG', image = 'weapon_smg.webp', description = 'A handheld light                                                                                                                                                                                                                                                                                                                                                                 weight machine gun' },
    weapon_smg_mk2               = { name = 'weapon_smg_mk2', label = 'SMG Mk II', weight = 1000, ammotype = 'AMMO_SMG', image = 'weapon_smg_mk2.webp', description = 'SMG MK2' },
    weapon_assaultsmg            = { name = 'weapon_assaultsmg', label = 'Assault SMG', weight = 1000, ammotype = 'AMMO_SMG', image = 'weapon_assaultsmg.webp', description = 'An assault version of a handheld light                                                                                                                                                                                                                                                                                                                                    weight machine gun' },
    weapon_combatpdw             = { name = 'weapon_combatpdw', label = 'Combat PDW', weight = 1000, ammotype = 'AMMO_SMG', image = 'weapon_combatpdw.webp', description = 'A combat version of a handheld light                                                                                                                                                                                                                                                                                                                                       weight machine gun' },
    weapon_machinepistol         = { name = 'weapon_machinepistol', label = 'Tec-9', weight = 1000, ammotype = 'AMMO_PISTOL', image = 'weapon_machinepistol.webp', description = 'A self-loading pistol capable of burst or fully automatic fire' },
    weapon_minismg               = { name = 'weapon_minismg', label = 'Mini SMG', weight = 1000, ammotype = 'AMMO_SMG', image = 'weapon_minismg.webp', description = 'A mini handheld light                                                                                                                                                                                                                                                                                                                                                        weight machine gun' },
    weapon_raycarbine            = { name = 'weapon_raycarbine', label = 'Unholy Hellbringer', weight = 1000, ammotype = 'AMMO_SMG', image = 'weapon_raycarbine.webp', description = 'Weapon Raycarbine' },

    -- Shotguns
    weapon_pumpshotgun           = { name = 'weapon_pumpshotgun', label = 'Pump Shotgun', weight = 1000, ammotype = 'AMMO_SHOTGUN', image = 'weapon_pumpshotgun.webp', description = 'A pump-action smoothbore gun for firing small shot at short range' },
    weapon_sawnoffshotgun        = { name = 'weapon_sawnoffshotgun', label = 'Sawn-off Shotgun', weight = 1000, ammotype = 'AMMO_SHOTGUN', image = 'weapon_sawnoffshotgun.webp', description = 'A sawn-off smoothbore gun for firing small shot at short range' },
    weapon_assaultshotgun        = { name = 'weapon_assaultshotgun', label = 'Assault Shotgun', weight = 1000, ammotype = 'AMMO_SHOTGUN', image = 'weapon_assaultshotgun.webp', description = 'An assault version of asmoothbore gun for firing small shot at short range' },
    weapon_bullpupshotgun        = { name = 'weapon_bullpupshotgun', label = 'Bullpup Shotgun', weight = 1000, ammotype = 'AMMO_SHOTGUN', image = 'weapon_bullpupshotgun.webp', description = 'A compact smoothbore gun for firing small shot at short range' },
    weapon_musket                = { name = 'weapon_musket', label = 'Musket', weight = 1000, ammotype = 'AMMO_SHOTGUN', image = 'weapon_musket.webp', description = 'An infantryman\'s light gun with a long barrel, typically smooth-bored, muzzleloading, and fired from the shoulder' },
    weapon_heavyshotgun          = { name = 'weapon_heavyshotgun', label = 'Heavy Shotgun', weight = 1000, ammotype = 'AMMO_SHOTGUN', image = 'weapon_heavyshotgun.webp', description = 'A large smoothbore gun for firing small shot at short range' },
    weapon_dbshotgun             = { name = 'weapon_dbshotgun', label = 'Double-barrel Shotgun', weight = 1000, ammotype = 'AMMO_SHOTGUN', image = 'weapon_dbshotgun.webp', description = 'A shotgun with two parallel barrels, allowing two single shots to be fired in quick succession' },
    weapon_autoshotgun           = { name = 'weapon_autoshotgun', label = 'Auto Shotgun', weight = 1000, ammotype = 'AMMO_SHOTGUN', image = 'weapon_autoshotgun.webp', description = 'A shotgun capable of rapid continous fire' },
    weapon_pumpshotgun_mk2       = { name = 'weapon_pumpshotgun_mk2', label = 'Pumpshotgun Mk II', weight = 1000, ammotype = 'AMMO_SHOTGUN', image = 'weapon_pumpshotgun_mk2.webp', description = 'Pumpshotgun MK2' },
    weapon_combatshotgun         = { name = 'weapon_combatshotgun', label = 'Combat Shotgun', weight = 1000, ammotype = 'AMMO_SHOTGUN', image = 'weapon_combatshotgun.webp', description = 'Weapon Combatshotgun' },

    -- Assault Rifles
    weapon_assaultrifle          = { name = 'weapon_assaultrifle', label = 'Assault Rifle', weight = 1000, ammotype = 'AMMO_RIFLE', image = 'weapon_assaultrifle.webp', description = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use' },
    weapon_assaultrifle_mk2      = { name = 'weapon_assaultrifle_mk2', label = 'Assault Rifle Mk II', weight = 1000, ammotype = 'AMMO_RIFLE', image = 'weapon_assaultrifle_mk2.webp', description = 'Assault Rifle MK2' },
    weapon_carbinerifle          = { name = 'weapon_carbinerifle', label = 'Carbine Rifle', weight = 1000, ammotype = 'AMMO_RIFLE', image = 'weapon_carbinerifle.webp', description = 'A light                                                                                                                                                                                                                                                                                                                                                               weight automatic rifle' },
    weapon_carbinerifle_mk2      = { name = 'weapon_carbinerifle_mk2', label = 'Carbine Rifle Mk II', weight = 1000, ammotype = 'AMMO_RIFLE', image = 'weapon_carbinerifle_mk2.webp', description = 'Carbine Rifle MK2' },
    weapon_advancedrifle         = { name = 'weapon_advancedrifle', label = 'Advanced Rifle', weight = 1000, ammotype = 'AMMO_RIFLE', image = 'weapon_advancedrifle.webp', description = 'An assault version of a rapid-fire, magazine-fed automatic rifle designed for infantry use' },
    weapon_specialcarbine        = { name = 'weapon_specialcarbine', label = 'Special Carbine', weight = 1000, ammotype = 'AMMO_RIFLE', image = 'weapon_specialcarbine.webp', description = 'An extremely versatile assault rifle for any combat situation' },
    weapon_bullpuprifle          = { name = 'weapon_bullpuprifle', label = 'Bullpup Rifle', weight = 1000, ammotype = 'AMMO_RIFLE', image = 'weapon_bullpuprifle.webp', description = 'A compact automatic assault rifle' },
    weapon_compactrifle          = { name = 'weapon_compactrifle', label = 'Compact Rifle', weight = 1000, ammotype = 'AMMO_RIFLE', image = 'weapon_compactrifle.webp', description = 'A compact version of an assault rifle' },
    weapon_specialcarbine_mk2    = { name = 'weapon_specialcarbine_mk2', label = 'Special Carbine Mk II', weight = 1000, ammotype = 'AMMO_RIFLE', image = 'weapon_specialcarbine_mk2.webp', description = 'Weapon Wpecialcarbine MK2' },
    weapon_bullpuprifle_mk2      = { name = 'weapon_bullpuprifle_mk2', label = 'Bullpup Rifle Mk II', weight = 1000, ammotype = 'AMMO_RIFLE', image = 'weapon_bullpuprifle_mk2.webp', description = 'Bull Puprifle MK2' },
    weapon_militaryrifle         = { name = 'weapon_militaryrifle', label = 'Military Rifle', weight = 1000, ammotype = 'AMMO_RIFLE', image = 'weapon_militaryrifle.webp', description = 'Weapon Militaryrifle' },

    -- Light Machine Guns
    weapon_mg                    = { name = 'weapon_mg', label = 'Machinegun', weight = 1000, ammotype = 'AMMO_MG', image = 'weapon_mg.webp', description = 'An automatic gun that fires bullets in rapid succession for as long as the trigger is pressed' },
    weapon_combatmg              = { name = 'weapon_combatmg', label = 'Combat MG', weight = 1000, ammotype = 'AMMO_MG', image = 'weapon_combatmg.webp', description = 'A combat version of an automatic gun that fires bullets in rapid succession for as long as the trigger is pressed' },
    weapon_gusenberg             = { name = 'weapon_gusenberg', label = 'Thompson SMG', weight = 1000, ammotype = 'AMMO_MG', image = 'weapon_gusenberg.webp', description = 'An automatic rifle commonly referred to as a tommy gun' },
    weapon_combatmg_mk2          = { name = 'weapon_combatmg_mk2', label = 'Combat MG Mk II', weight = 1000, ammotype = 'AMMO_MG', image = 'weapon_combatmg_mk2.webp', description = 'Weapon Combatmg MK2' },

    -- Sniper Rifles
    weapon_sniperrifle           = { name = 'weapon_sniperrifle', label = 'Sniper Rifle', weight = 1000, ammotype = 'AMMO_SNIPER', image = 'weapon_sniperrifle.webp', description = 'A high-precision, long-range rifle' },
    weapon_heavysniper           = { name = 'weapon_heavysniper', label = 'Heavy Sniper', weight = 1000, ammotype = 'AMMO_SNIPER', image = 'weapon_heavysniper.webp', description = 'An upgraded high-precision, long-range rifle' },
    weapon_marksmanrifle         = { name = 'weapon_marksmanrifle', label = 'Marksman Rifle', weight = 1000, ammotype = 'AMMO_SNIPER', image = 'weapon_marksmanrifle.webp', description = 'A very accurate single-fire rifle' },
    weapon_remotesniper          = { name = 'weapon_remotesniper', label = 'Remote Sniper', weight = 1000, ammotype = 'AMMO_SNIPER_REMOTE', image = 'weapon_remotesniper.webp', description = 'A portable high-precision, long-range rifle' },
    weapon_heavysniper_mk2       = { name = 'weapon_heavysniper_mk2', label = 'Heavy Sniper Mk II', weight = 1000, ammotype = 'AMMO_SNIPER', image = 'weapon_heavysniper_mk2.webp', description = 'Weapon Heavysniper MK2' },
    weapon_marksmanrifle_mk2     = { name = 'weapon_marksmanrifle_mk2', label = 'Marksman Rifle Mk II', weight = 1000, ammotype = 'AMMO_SNIPER', image = 'weapon_marksmanrifle_mk2.webp', description = 'Weapon Marksmanrifle MK2' },

    -- Heavy Weapons
    weapon_rpg                   = { name = 'weapon_rpg', label = 'RPG', weight = 1000, ammotype = 'AMMO_RPG', image = 'weapon_rpg.webp', description = 'A rocket-propelled grenade launcher' },
    weapon_grenadelauncher       = { name = 'weapon_grenadelauncher', label = 'Grenade Launcher', weight = 1000, ammotype = 'AMMO_GRENADELAUNCHER', image = 'weapon_grenadelauncher.webp', description = 'A weapon that fires a specially-designed large-caliber projectile, often with an explosive, smoke or gas warhead' },
    weapon_grenadelauncher_smoke = { name = 'weapon_grenadelauncher_smoke', label = 'Smoke Grenade Launcher', weight = 1000, ammotype = 'AMMO_GRENADELAUNCHER', image = 'weapon_smokegrenade.webp', description = 'A bomb that produces a lot of smoke when it explodes' },
    weapon_minigun               = { name = 'weapon_minigun', label = 'Minigun', weight = 1000, ammotype = 'AMMO_MINIGUN', image = 'weapon_minigun.webp', description = 'A portable machine gun consisting of a rotating cluster of six barrels and capable of variable rates of fire of up to 6,000 rounds per minute' },
    weapon_firework              = { name = 'weapon_firework', label = 'Firework Launcher', weight = 1000, ammotype = nil, image = 'weapon_firework.webp', description = 'A device containing gunpowder and other combustible chemicals that causes a spectacular explosion when ignited' },
    weapon_railgun               = { name = 'weapon_railgun', label = 'Railgun', weight = 1000, ammotype = nil, image = 'weapon_railgun.webp', description = 'A weapon that uses electromagnetic force to launch high velocity projectiles' },
    weapon_railgunxm3            = { name = 'weapon_railgunxm3', label = 'Railgun XM3', weight = 1000, ammotype = nil, image = 'weapon_railgunxm3.webp', description = 'A weapon that uses electromagnetic force to launch high velocity projectiles' },
    weapon_hominglauncher        = { name = 'weapon_hominglauncher', label = 'Homing Launcher', weight = 1000, ammotype = 'AMMO_STINGER', image = 'weapon_hominglauncher.webp', description = 'A weapon fitted with an electronic device that enables it to find and hit a target' },
    weapon_compactlauncher       = { name = 'weapon_compactlauncher', label = 'Compact Launcher', weight = 1000, ammotype = nil, image = 'weapon_compactlauncher.webp', description = 'A compact grenade launcher' },
    weapon_rayminigun            = { name = 'weapon_rayminigun', label = 'Widowmaker', weight = 1000, ammotype = 'AMMO_MINIGUN', image = 'weapon_rayminigun.webp', description = 'Weapon Rayminigun' },

    -- Throwables
    weapon_grenade               = { name = 'weapon_grenade', label = 'Grenade', weight = 1000, ammotype = nil, image = 'weapon_grenade.webp', description = 'A handheld throwable bomb' },
    weapon_bzgas                 = { name = 'weapon_bzgas', label = 'BZ Gas', weight = 1000, ammotype = nil, image = 'weapon_bzgas.webp', description = 'A cannister of gas that causes extreme pain' },
    weapon_molotov               = { name = 'weapon_molotov', label = 'Molotov', weight = 1000, ammotype = nil, image = 'weapon_molotov.webp', description = 'A crude bomb made of a bottle filled with a flammable liquid and fitted with a wick for lighting' },
    weapon_stickybomb            = { name = 'weapon_stickybomb', label = 'C4', weight = 1000, ammotype = nil, image = 'weapon_stickybomb.webp', description = 'An explosive charge covered with an adhesive that when thrown against an object sticks until it explodes' },
    weapon_proxmine              = { name = 'weapon_proxmine', label = 'Proxmine Grenade', weight = 1000, ammotype = nil, image = 'weapon_proximitymine.webp', description = 'A bomb placed on the ground that detonates when going within its proximity' },
    weapon_snowball              = { name = 'weapon_snowball', label = 'Snowball', weight = 1000, ammotype = nil, image = 'weapon_snowball.webp', description = 'A ball of packed snow, especially one made for throwing at other people for fun' },
    weapon_pipebomb              = { name = 'weapon_pipebomb', label = 'Pipe Bomb', weight = 1000, ammotype = nil, image = 'weapon_pipebomb.webp', description = 'A homemade bomb, the components of which are contained in a pipe' },
    weapon_ball                  = { name = 'weapon_ball', label = 'Ball', weight = 1000, ammotype = 'AMMO_BALL', image = 'weapon_ball.webp', description = 'A solid or hollow spherical or egg-shaped object that is kicked, thrown, or hit in a game' },
    weapon_smokegrenade          = { name = 'weapon_smokegrenade', label = 'Smoke Grenade', weight = 1000, ammotype = nil, image = 'weapon_c4.webp', description = 'An explosive charge that can be remotely detonated' },
    weapon_flare                 = { name = 'weapon_flare', label = 'Flare pistol', weight = 1000, ammotype = 'AMMO_FLARE', image = 'weapon_flare.webp', description = 'A small pyrotechnic devices used for illumination and signalling' },

    -- Miscellaneous
    weapon_petrolcan             = { name = 'weapon_petrolcan', label = 'Petrol Can', weight = 1000, ammotype = 'AMMO_PETROLCAN', image = 'weapon_petrolcan.webp', description = 'A robust liquid container made from pressed steel' },
    weapon_fireextinguisher      = { name = 'weapon_fireextinguisher', label = 'Fire Extinguisher', weight = 1000, ammotype = nil, image = 'weapon_fireextinguisher.webp', description = 'A portable device that discharges a jet of water, foam, gas, or other material to extinguish a fire' },
    weapon_hazardcan             = { name = 'weapon_hazardcan', label = 'Hazardous Jerry Can', weight = 1000, ammotype = 'AMMO_PETROLCAN', image = 'weapon_hazardcan.webp', description = 'Weapon Hazardcan' },

}
local ammoTypeToPolice = {
    AMMO_SMG = "AMMO_POLICE_SMG",
    AMMO_SNIPER = "AMMO_POLICE_SNIPER",
    AMMO_SHOTGUN = "AMMO_POLICE_SHOTGUN",
    AMMO_PISTOL = "AMMO_POLICE_PISTOL",
    AMMO_MG = "AMMO_POLICE_MG",
    AMMO_RIFLE = "AMMO_POLICE_RIFLE",
    AMMO_STUNGUN = "AMMO_POLICE_STUNGUN",
}

weaponsData = {}
for name, data in pairs(weaponsList) do
    data.name = name
    data.type = "weapon"
    data.unique = true
    weaponsData[data.name] = data

    local newData = json.decode(json.encode(data))
    newData.name = name:gsub("weapon_", "weapon_police_")
    newData.label = "Police " .. newData.label
    newData.ammotype = ammoTypeToPolice[newData.ammotype]
    newData.rareName = "weaponPolice"
    weaponsData[newData.name] = newData
end
