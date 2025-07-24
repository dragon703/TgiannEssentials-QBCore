config.attachment = {}
config.attachment.enable = true             -- adds attachments menu to right click menu
config.attachment.closeWhenInvClosed = true -- closes attachment menu when inventory is closed
config.attachment.location = {
    enable = true,
    locations = {
        {
            coords = vector3(19.3139, -1111.2748, 29.7970),
            r = 10,
        },
        {
            coords = vector3(-663.6223, -937.1613, 23.4768),
            r = 10,
        },
        {
            coords = vector3(810.2000, -2157.3000, 29.6190),
            r = 10,
        },
        {
            coords = vector3(1693.4000, 3759.5000, 37.0654),
            r = 10,
        },
        {
            coords = vector3(-331.4380, 6083.4717, 33.6701),
            r = 10,
        },
        {
            coords = vector3(252.3000, -50.0001, 70.9411),
            r = 10,
        },
        {
            coords = vector3(2567.6001, 294.3000, 108.7349),
            r = 10,
        },
        {
            coords = vector3(-1117.5000, 2698.6001, 18.5541),
            r = 10,
        },
        {
            coords = vector3(842.4000, -1033.4000, 28.1949),
            r = 10,
        },
        { -- PD
            coords = vector3(452.2244, -980.9645, 30.6896),
            r = 25,
        },
    }
}
config.attachment.moneyType = "bank"
config.attachment.enableCommand = true
config.attachment.commandName = "open"
config.attachment.tableSpawnZ = 200
config.attachment.tintItem = "free"

--[[
    item: Component Money or Item Name | string or int
        Example
            item = 500
            item = "free"
            item = "flashlight"

    component: Component Name | string
        Example
            component = "COMPONENT_SWITCHBLADE_VARMOD_BASE"

    default: is component default compent | bool
        Example
            default = true
            default = false
]]
config.attachment.weaponAttachment = {
    --EX ED Weapon
    --PD Pistol
    ["weapon_fiveseven"] = {
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_FIVESEVEN_FLSH_01" },
            { item = "free", component = "COMPONENT_FIVESEVEN_FLSH_02" },
            { item = "free", component = "COMPONENT_FIVESEVEN_FLSH_03" },
            { item = "free", component = "COMPONENT_FIVESEVEN_FLSH_04" },
        },
        ["muzzle"] = {
            { item = 500, component = "COMPONENT_FIVESEVEN_SUPP_01" },
            { item = 500, component = "COMPONENT_FIVESEVEN_SUPP_02" },
            { item = 500, component = "COMPONENT_FIVESEVEN_SUPP_03" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_FIVESEVEN_SCOPE_01" },
        },
    },
    ["weapon_fm1_glock19"] = {
        ["magazine"] = {
            { item = "free", component = "component_fm1_glock19_clip_01", default = true },
            { item = "free", component = "component_fm1_glock19_clip_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_FMFLSH_01" },
            { item = "free", component = "COMPONENT_FMFLSH_02" },
            { item = "free", component = "COMPONENT_FMFLSH_03" },
            { item = "free", component = "COMPONENT_FMFLSH_04" },
            { item = "free", component = "COMPONENT_FMFLSH_05" },
        },
        ["muzzle"] = {
            { item = 500,    component = "COMPONENT_FMSUPP_07" },
            { item = 500,    component = "COMPONENT_FMSUPP_08" },
            { item = 500,    component = "COMPONENT_FMSUPP_09" },
            { item = 500,    component = "component_fmsupp_10" },
            { item = 500,    component = "COMPONENT_FMSUPP_11" },
            { item = "free", component = "COMPONENT_FMSUPP_13" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_FMSCOPE_26" },
            { item = "free", component = "COMPONENT_FMSCOPE_27" },
            { item = "free", component = "COMPONENT_FMSCOPE_28" },
            { item = "free", component = "COMPONENT_FMSCOPE_30" },
            { item = "free", component = "COMPONENT_FMSCOPE_31" },
            { item = "free", component = "COMPONENT_FMSCOPE_32" },
            { item = "free", component = "COMPONENT_FMSCOPE_33" },
            { item = "free", component = "COMPONENT_FMSCOPE_34" },
            { item = "free", component = "COMPONENT_FMSCOPE_35" },
        },
    },
    ["weapon_pistol"] = {
        ["magazine"] = {
            { item = "free",     component = "COMPONENT_PISTOL_CLIP_01", default = true },
            { item = "testitem", component = "COMPONENT_PISTOL_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_PI_FLSH" },
        },
    },
    ["weapon_pistol_mk2"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_PISTOL_MK2_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_PISTOL_MK2_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_PI_FLSH_02" },
        },
    },
    --ILLEGAL Pistol
    ["weapon_m45a1fm"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_M45A1FM_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_M45A1FM_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_PI_FLSH" },
        },
    },
    ["weapon_heavypistol"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_HEAVYPISTOL_CLIP_01", default = true },
            { item = 100,    component = "COMPONENT_HEAVYPISTOL_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_PI_FLSH" },
        },
    },
    --PD smg
    ["weapon_hkump"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_UMP_CLIP_01", default = true },
            { item = 150,    component = "COMPONENT_UMP_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_UMP_FLSH_01" },
            { item = "free", component = "COMPONENT_UMP_FLSH_02" },
            { item = "free", component = "COMPONENT_UMP_FLSH_03" },
            { item = "free", component = "COMPONENT_UMP_FLSH_04" },
            { item = "free", component = "COMPONENT_UMP_FLSH_05" },
            { item = "free", component = "COMPONENT_UMP_FLSH_06" },
            { item = "free", component = "COMPONENT_UMP_FLSH_07" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_UMP_GRIP_01" },
            { item = "free", component = "COMPONENT_UMP_GRIP_02" },
            { item = "free", component = "COMPONENT_UMP_GRIP_03" },
            { item = "free", component = "COMPONENT_UMP_GRIP_04" },
            { item = "free", component = "COMPONENT_UMP_GRIP_05" },
            { item = "free", component = "COMPONENT_UMP_GRIP_06" },
            { item = "free", component = "COMPONENT_UMP_GRIP_07" },
            { item = "free", component = "COMPONENT_UMP_GRIP_08" },
            { item = "free", component = "COMPONENT_UMP_GRIP_09" },
            { item = 500,    component = "COMPONENT_UMP_GRIP_10" },
        },
        ["barrel"] = {
            { item = "free", component = "COMPONENT_UMP_MOUNT_01" },
            { item = "free", component = "COMPONENT_UMP_MOUNT_02" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_UMP_SCOPE_01" },
            { item = "free", component = "COMPONENT_UMP_SCOPE_02" },
            { item = "free", component = "COMPONENT_UMP_SCOPE_03" },
            { item = "free", component = "COMPONENT_UMP_SCOPE_04" },
            { item = "free", component = "COMPONENT_UMP_SCOPE_05" },
            { item = "free", component = "COMPONENT_UMP_SCOPE_06" },
            { item = "free", component = "COMPONENT_UMP_SCOPE_07" },
            { item = "free", component = "COMPONENT_UMP_SCOPE_08" },
            { item = "free", component = "COMPONENT_UMP_SCOPE_09" },
            { item = "free", component = "COMPONENT_UMP_SCOPE_10" },
        },
    },
    ["weapon_mp5sdfm"] = {
        --[[  ["magazine"] = {
            {item = "free", component = "COMPONENT_MP5SD_CLIP_01", default = true},
            {item = "free", component = "COMPONENT_MP5SD_CLIP_02"},
        }, ]]
    },
    ["weapon_combatpdw"] = {
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_MPX_LASR" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_MPX_01" },
            { item = "free", component = "COMPONENT_AT_SCOPE_MPX_02" },
        },
    },
    --ILLEGAL smg
    ["weapon_minismg"] = {
        -- Hiç bir şey yok
    },
    ["weapon_microsmg"] = {
        -- Hiç bir şey yok
    },
    ["weapon_pp19"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_PP19_CLIP_01", default = true },
            --{item = "free", component = "COMPONENT_PP19_CLIP_02"},
            { item = 200,    component = "COMPONENT_PP19_CLIP_03" },
            --{item = "free", component = "COMPONENT_PP19_CLIP_04"},
            --{item = "free", component = "COMPONENT_PP19_CLIP_05"},
            --{item = "free", component = "COMPONENT_PP19_CLIP_06"},
            --{item = "free", component = "COMPONENT_PP19_CLIP_07"},

        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_PP19_LASER_01" },
            { item = "free", component = "COMPONENT_PP19_LASER_02" },
            { item = "free", component = "COMPONENT_PP19_LASER_03" },
            { item = "free", component = "COMPONENT_PP19_LASER_04" },
            { item = "free", component = "COMPONENT_PP19_LASER_05" },
            { item = "free", component = "COMPONENT_PP19_LASER_06" },
            { item = "free", component = "COMPONENT_PP19_LASER_07" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_PP19_GRIP_01" },
            { item = "free", component = "COMPONENT_PP19_GRIP_02" },
            { item = "free", component = "COMPONENT_PP19_GRIP_03" },
            { item = "free", component = "COMPONENT_PP19_GRIP_04" },
            { item = "free", component = "COMPONENT_PP19_GRIP_05" },
            { item = "free", component = "COMPONENT_PP19_GRIP_06" },
            { item = "free", component = "COMPONENT_PP19_GRIP_07" },
            { item = "free", component = "COMPONENT_PP19_GRIP_08" },
            { item = "free", component = "COMPONENT_PP19_GRIP_09" },
        },
        ["barrel"] = {
            { item = "free", component = "COMPONENT_PP19_HANDGUARD_01", default = true },
            { item = "free", component = "COMPONENT_PP19_HANDGUARD_02" },
            { item = "free", component = "COMPONENT_PP19_HANDGUARD_03" },
            -- {item = "free", component = "COMPONENT_PP19_HANDGUARD_04"},
            { item = "free", component = "COMPONENT_PP19_HANDGUARD_05" },
            --{item = "free", component = "COMPONENT_PP19_HANDGUARD_06"},
            { item = "free", component = "COMPONENT_PP19_HANDGUARD_07" },
            { item = "free", component = "COMPONENT_PP19_HANDGUARD_08" },
            --{item = "free", component = "COMPONENT_PP19_HANDGUARD_09"},
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_PP19_SCOPE_01", default = true },
            { item = "free", component = "COMPONENT_PP19_SCOPE_02" },
            { item = "free", component = "COMPONENT_PP19_SCOPE_03" },
            { item = "free", component = "COMPONENT_PP19_SCOPE_04" },
            { item = "free", component = "COMPONENT_PP19_SCOPE_05" },
            { item = "free", component = "COMPONENT_PP19_SCOPE_06" },
            { item = "free", component = "COMPONENT_PP19_SCOPE_07" },
            { item = "free", component = "COMPONENT_PP19_SCOPE_08" },
            { item = "free", component = "COMPONENT_PP19_SCOPE_09" },
            -- {item = "free", component = "COMPONENT_PP19_SCOPE_10"},
        },
    },
    ["weapon_compactrifle"] = {
        -- hiçbir şey yok adasdasd
    },
    --PD rifle
    ["weapon_specialcarbine_mk2"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_SPECIALCARBINE_MK2_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_SPECIALCARBINE_MK2_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SIGHTS",          default = true },
            { item = "free", component = "COMPONENT_AT_SCOPE_MEDIUM_MK2" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP_02" },
        },
        ["barrel"] = {
            { item = "free", component = "COMPONENT_AT_SC_BARREL_01", default = true },
            { item = "free", component = "COMPONENT_AT_SC_BARREL_02" },
        },
    },
    ["weapon_mk47fm"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_MK47_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_MK47_CLIP_02" },
        },
    },
    ["weapon_pistolxm3"] = {
        ["muzzle"] = {
            { item = 500, component = "COMPONENT_PISTOLXM3_SUPP" },
        },
    },
    ["weapon_ar15"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_AR15_CLIP_01", default = true },
            { item = 200,    component = "COMPONENT_AR15_CLIP_02" },
            { item = 200,    component = "COMPONENT_AR15_CLIP_03" },
            { item = 200,    component = "COMPONENT_AR15_CLIP_04" },
            { item = 200,    component = "COMPONENT_AR15_CLIP_05" },
            --{item = 200, component = "COMPONENT_AR15_CLIP_06"},
            { item = 200,    component = "COMPONENT_AR15_CLIP_07" },
            { item = 200,    component = "COMPONENT_AR15_CLIP_08" },
            { item = 200,    component = "COMPONENT_AR15_CLIP_09" },
            --{item = 200, component = "COMPONENT_AR15_CLIP_10"},
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_BEOWULF_FLSH_01" },
            { item = "free", component = "COMPONENT_BEOWULF_FLSH_02" },
            { item = "free", component = "COMPONENT_BEOWULF_FLSH_03" },
            { item = "free", component = "COMPONENT_BEOWULF_FLSH_04" },
            { item = "free", component = "COMPONENT_BEOWULF_FLSH_05" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_BEOWULF_GRIP_01" },
            { item = "free", component = "COMPONENT_BEOWULF_GRIP_02" },
            { item = "free", component = "COMPONENT_BEOWULF_GRIP_03" },
            { item = "free", component = "COMPONENT_BEOWULF_GRIP_04" },
            { item = "free", component = "COMPONENT_BEOWULF_GRIP_05" },
            { item = "free", component = "COMPONENT_BEOWULF_GRIP_06" },
            { item = "free", component = "COMPONENT_BEOWULF_GRIP_07" },
        },
        ["muzzle"] = {
            { item = 500, component = "COMPONENT_FIVESEVEN_SUPP_01" },
            { item = 500, component = "COMPONENT_AR15_SUPP_02" },
        },
        ["barrel"] = {
            { item = "free", component = "COMPONENT_BEOWULF_BODY_01", default = true },
            { item = "free", component = "COMPONENT_BEOWULF_BODY_02" },
            { item = "free", component = "COMPONENT_BEOWULF_BODY_03" },
            { item = "free", component = "COMPONENT_BEOWULF_BODY_04" },
            { item = "free", component = "COMPONENT_BEOWULF_BODY_05" },
            { item = "free", component = "COMPONENT_BEOWULF_BODY_06" },
            { item = "free", component = "COMPONENT_BEOWULF_BODY_07" },
            { item = "free", component = "COMPONENT_BEOWULF_BODY_08" },
            { item = "free", component = "COMPONENT_BEOWULF_BODY_09" },
            { item = "free", component = "COMPONENT_BEOWULF_BODY_10" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_BEOWULF_SCOPE_01", default = true },
            { item = "free", component = "COMPONENT_BEOWULF_SCOPE_02" },
            { item = "free", component = "COMPONENT_BEOWULF_SCOPE_03" },
            { item = "free", component = "COMPONENT_BEOWULF_SCOPE_04" },
            { item = 500,    component = "COMPONENT_BEOWULF_SCOPE_05" },
            { item = "free", component = "COMPONENT_BEOWULF_SCOPE_06" },
            { item = "free", component = "COMPONENT_BEOWULF_SCOPE_07" },
            { item = 500,    component = "COMPONENT_BEOWULF_SCOPE_08" },
            { item = "free", component = "COMPONENT_BEOWULF_SCOPE_09" },
            { item = "free", component = "COMPONENT_BEOWULF_SCOPE_10" },
            { item = "free", component = "COMPONENT_BEOWULF_SCOPE_11" },
            { item = "free", component = "COMPONENT_BEOWULF_SCOPE_12" },
            { item = "free", component = "COMPONENT_BEOWULF_SCOPE_13" },
            { item = "free", component = "COMPONENT_BEOWULF_SCOPE_14" },
            { item = 500,    component = "COMPONENT_BEOWULF_SCOPE_15" },
            { item = 500,    component = "COMPONENT_BEOWULF_SCOPE_16" },
            { item = 500,    component = "COMPONENT_BEOWULF_SCOPE_17" },
            { item = 500,    component = "COMPONENT_BEOWULF_SCOPE_18" },
        },
    },
    -- ILLEGAL Rifle
    ["weapon_aks74u"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_AKS74U_CLIP_01", default = true },
            { item = 150,    component = "COMPONENT_AKS74U_CLIP_02" },
            { item = 150,    component = "COMPONENT_AKS74U_CLIP_03" },
            { item = 150,    component = "COMPONENT_AKS74U_CLIP_04" },
            { item = 150,    component = "COMPONENT_AKS74U_CLIP_05" },
            { item = 150,    component = "COMPONENT_AKS74U_CLIP_06" },
            { item = 150,    component = "COMPONENT_AKS74U_CLIP_07" },
            -- {item = "free", component = "COMPONENT_AKS74U_CLIP_08"},
            -- {item = "free", component = "COMPONENT_AKS74U_CLIP_09"},
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AKS74U_FLSH_01" },
            { item = "free", component = "COMPONENT_AKS74U_FLSH_02" },
            { item = "free", component = "COMPONENT_AKS74U_FLSH_03" },
            { item = "free", component = "COMPONENT_AKS74U_FLSH_04" },
            { item = "free", component = "COMPONENT_AKS74U_FLSH_05" },
            { item = "free", component = "COMPONENT_AKS74U_FLSH_06" },
            { item = "free", component = "COMPONENT_AKS74U_FLSH_07" },
            { item = "free", component = "COMPONENT_AKS74U_FLSH_08" },
            { item = "free", component = "COMPONENT_AKS74U_FLSH_09" },
            { item = "free", component = "COMPONENT_AKS74U_FLSH_10" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AKS74U_MUZ_01" },
            { item = "free", component = "COMPONENT_AKS74U_MUZ_02" },
            { item = "free", component = "COMPONENT_AKS74U_MUZ_03" },
            { item = "free", component = "COMPONENT_AKS74U_MUZ_04" },
            { item = 500,    component = "COMPONENT_AKS74U_MUZ_05" },
            { item = 500,    component = "COMPONENT_AKS74U_MUZ_06" },
            { item = 500,    component = "COMPONENT_AKS74U_MUZ_07" },
            { item = 500,    component = "COMPONENT_AKS74U_MUZ_08" },
            { item = 500,    component = "COMPONENT_AKS74U_MUZ_09" },
        },
        ["barrel"] = {
            { item = "free", component = "COMPONENT_AKS74U_HANDGUARD_01", default = true },
            { item = "free", component = "COMPONENT_AKS74U_HANDGUARD_02" },
            { item = "free", component = "COMPONENT_AKS74U_HANDGUARD_03" },
            { item = "free", component = "COMPONENT_AKS74U_HANDGUARD_04" },
            { item = "free", component = "COMPONENT_AKS74U_HANDGUARD_05" },
            { item = "free", component = "COMPONENT_AKS74U_HANDGUARD_06" },
            { item = "free", component = "COMPONENT_AKS74U_HANDGUARD_07" },
            { item = "free", component = "COMPONENT_AKS74U_HANDGUARD_08" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_01" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_02" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_03" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_04" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_05" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_06" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_07" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_08" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_09" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_10" },
            { item = 500,    component = "COMPONENT_AKS74U_SCOPE_11" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_12" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_13" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_14" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_15" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_16" },
            { item = "free", component = "COMPONENT_AKS74U_SCOPE_17" },
        },
        ["stock"] = {
            { item = "free", component = "COMPONENT_AKS74U_STOCK_01", default = true },
            --{item = "free", component = "COMPONENT_AKS74U_STOCK_02"},
            { item = "free", component = "COMPONENT_AKS74U_STOCK_03" },
            { item = "free", component = "COMPONENT_AKS74U_STOCK_04" },
        },
    },
    ["weapon_asval"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_ASVAL_CLIP_01", default = true },
            { item = 200,    component = "COMPONENT_ASVAL_CLIP_02" },
            { item = 200,    component = "COMPONENT_ASVAL_CLIP_03" },
            { item = 200,    component = "COMPONENT_ASVAL_CLIP_04" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_ASVAL_FLSH_01" },
            { item = "free", component = "COMPONENT_ASVAL_FLSH_02" },
            { item = "free", component = "COMPONENT_ASVAL_FLSH_03" },
            { item = "free", component = "COMPONENT_ASVAL_FLSH_04" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_ASVAL_GRIP_01" },
            { item = "free", component = "COMPONENT_ASVAL_GRIP_02" },
            { item = "free", component = "COMPONENT_ASVAL_GRIP_03" },
            { item = "free", component = "COMPONENT_ASVAL_GRIP_04" },
            { item = "free", component = "COMPONENT_ASVAL_GRIP_05" },
            { item = "free", component = "COMPONENT_ASVAL_GRIP_06" },
            { item = "free", component = "COMPONENT_ASVAL_GRIP_07" },
            { item = "free", component = "COMPONENT_ASVAL_GRIP_08" },
            { item = "free", component = "COMPONENT_ASVAL_GRIP_09" },
            { item = "free", component = "COMPONENT_ASVAL_GRIP_10" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_ASVAL_SCOPE_01" },
            { item = "free", component = "COMPONENT_ASVAL_SCOPE_02" },
            { item = "free", component = "COMPONENT_ASVAL_SCOPE_03" },
            { item = "free", component = "COMPONENT_ASVAL_SCOPE_04" },
            { item = "free", component = "COMPONENT_ASVAL_SCOPE_05" },
            { item = "free", component = "COMPONENT_ASVAL_SCOPE_06" },
            { item = 500,    component = "COMPONENT_ASVAL_SCOPE_07" },
        },
        ["stock"] = {
            { item = "free", component = "COMPONENT_ASVAL_STOCK_01", default = true },
            { item = "free", component = "COMPONENT_ASVAL_STOCK_02" },
            { item = "free", component = "COMPONENT_ASVAL_STOCK_03" },
            { item = "free", component = "COMPONENT_ASVAL_STOCK_04" },
            { item = "free", component = "COMPONENT_ASVAL_STOCK_05" },
            { item = "free", component = "COMPONENT_ASVAL_STOCK_06" },
            { item = "free", component = "COMPONENT_ASVAL_STOCK_07" },
            { item = "free", component = "COMPONENT_ASVAL_STOCK_08" },
            { item = "free", component = "COMPONENT_ASVAL_STOCK_09" },
            { item = "free", component = "COMPONENT_ASVAL_STOCK_10" },
        },
    },
    ["weapon_mk47banshee2"] = {
        ["muzzle"] = {
            { item = 500, component = "COMPONENT_FMSUPP_03" },
            { item = 500, component = "COMPONENT_FMSUPP_01" },
        },
        ["magazine"] = {
            { item = "free", component = "COMPONENT_MK47BANSHEE_CLIP_01", default = true },
            { item = 200,    component = "COMPONENT_MK47BANSHEE_CLIP_02" },
            { item = 200,    component = "COMPONENT_MK47BANSHEE_CLIP_03" },
            { item = 200,    component = "COMPONENT_MK47BANSHEE_CLIP_04" },
            { item = 200,    component = "COMPONENT_MK47BANSHEE_CLIP_05" },
            { item = 200,    component = "COMPONENT_MK47BANSHEE_CLIP_06" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_MK47BANSHEE_FLSH_01" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_FMGRIP_03" },
            { item = "free", component = "COMPONENT_FMGRIP_04" },
            { item = "free", component = "COMPONENT_FMGRIP_05" },
            { item = "free", component = "COMPONENT_FMGRIP_06" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_FMSCOPE_09" },
            { item = "free", component = "COMPONENT_FMSCOPE_01" },
            { item = "free", component = "COMPONENT_FMSCOPE_02" },
            { item = "free", component = "COMPONENT_FMSCOPE_03" },
            { item = "free", component = "COMPONENT_FMSCOPE_04" },
            { item = "free", component = "COMPONENT_FMSCOPE_05" },
            { item = "free", component = "COMPONENT_FMSCOPE_06" },
            { item = "free", component = "COMPONENT_FMSCOPE_07" },
        },
        ["stock"] = {
            { item = "free", component = "COMPONENT_FMSTOCK_05", default = true },
            { item = "free", component = "COMPONENT_FMSTOCK_01" },
            { item = "free", component = "COMPONENT_FMSTOCK_02" },
            { item = "free", component = "COMPONENT_FMSTOCK_03" },
        },
    },
    ["weapon_mcxrattler"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_FMCLIP_01", default = true },
            { item = 200,    component = "COMPONENT_FMCLIP_02" },
            { item = 200,    component = "COMPONENT_FMCLIP_03" },
            { item = 200,    component = "COMPONENT_FMCLIP_04" },
            { item = 200,    component = "COMPONENT_FMCLIP_05" },
            { item = 200,    component = "COMPONENT_FMCLIP_06" },
            { item = 200,    component = "COMPONENT_FMCLIP_07" },
            { item = 200,    component = "COMPONENT_FMCLIP_08" },
            { item = 200,    component = "COMPONENT_FMCLIP_09" },
            { item = 200,    component = "COMPONENT_FMCLIP_10" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_MCXRATTLER_FLSH_01" },
            { item = "free", component = "COMPONENT_MCXRATTLER_FLSH_02" },
            { item = "free", component = "COMPONENT_MCXRATTLER_FLSH_03" },
            { item = "free", component = "COMPONENT_MCXRATTLER_FLSH_04" },

        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_FMGRIP_09" },
            { item = "free", component = "COMPONENT_FMGRIP_01" },
            { item = "free", component = "COMPONENT_FMGRIP_02" },
            { item = "free", component = "COMPONENT_FMGRIP_03" },
            { item = "free", component = "COMPONENT_FMGRIP_04" },
            { item = "free", component = "COMPONENT_FMGRIP_05" },
            { item = "free", component = "COMPONENT_FMGRIP_06" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_FMSCOPE_22" },
            { item = "free", component = "COMPONENT_FMSCOPE_23" },
            { item = "free", component = "COMPONENT_FMSCOPE_24" },
            { item = "free", component = "COMPONENT_FMSCOPE_15" },
            { item = "free", component = "COMPONENT_FMSCOPE_16" },
            { item = "free", component = "COMPONENT_FMSCOPE_17" },
            { item = "free", component = "COMPONENT_FMSCOPE_18" },
            { item = "free", component = "COMPONENT_FMSCOPE_19" },
            { item = "free", component = "COMPONENT_FMSCOPE_20" },
            { item = "free", component = "COMPONENT_FMSCOPE_12" },
            { item = "free", component = "COMPONENT_FMSCOPE_13" },
        },
        ["stock"] = {
            { item = "free", component = "COMPONENT_FMSTOCK_16" },
            { item = "free", component = "COMPONENT_FMSTOCK_17" },
            { item = "free", component = "COMPONENT_FMSTOCK_18" },
            { item = "free", component = "COMPONENT_FMSTOCK_19" },
            { item = "free", component = "COMPONENT_FMSTOCK_20" },
            { item = "free", component = "COMPONENT_FMSTOCK_21" },
        },
    },
    ["weapon_hk417"] = {
        ["muzzle"] = {
            { item = 500, component = "COMPONENT_FMSUPP_02" },
        },
        ["magazine"] = {
            { item = "free", component = "COMPONENT_HK417_CLIP_01", default = true },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_HK417_FLSH_01" },
            { item = "free", component = "COMPONENT_HK417_FLSH_02" },
            { item = "free", component = "COMPONENT_HK417_FLSH_03" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_FMSCOPE_01", default = true },
            { item = "free", component = "COMPONENT_FMSCOPE_02" },
            { item = "free", component = "COMPONENT_FMSCOPE_03" },
            { item = "free", component = "COMPONENT_FMSCOPE_04" },
            { item = "free", component = "COMPONENT_FMSCOPE_05" },
            { item = "free", component = "COMPONENT_FMSCOPE_06" },
            { item = "free", component = "COMPONENT_FMSCOPE_07" },
            { item = "free", component = "COMPONENT_FMSCOPE_08" },
            { item = "free", component = "COMPONENT_FMSCOPE_09" },
        },
        ["stock"] = {
            { item = "free", component = "COMPONENT_FMSTOCK_04", default = true },
            { item = "free", component = "COMPONENT_FMSTOCK_01" },
            { item = "free", component = "COMPONENT_FMSTOCK_02" },
            { item = "free", component = "COMPONENT_FMSTOCK_03" },
            { item = "free", component = "COMPONENT_FMSTOCK_05" },
        },
        ["barrel"] = {
            { item = "free", component = "COMPONENT_HK417_FRAME_01", default = true },
            { item = "free", component = "COMPONENT_HK417_FRAME_02" },
            { item = "free", component = "COMPONENT_HK417_FRAME_03" },
            { item = "free", component = "COMPONENT_HK417_FRAME_04" },
            { item = "free", component = "COMPONENT_HK417_FRAME_05" },
            { item = "free", component = "COMPONENT_HK417_FRAME_06" },
        }
    },
    ["weapon_fm1_honeybadger"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_FMCLIP_01", default = true },
            { item = 200,    component = "COMPONENT_FMCLIP_02" },
            { item = 200,    component = "COMPONENT_FMCLIP_03" },
            { item = 200,    component = "COMPONENT_FMCLIP_04" },
            { item = 200,    component = "COMPONENT_FMCLIP_05" },
            { item = 200,    component = "COMPONENT_FMCLIP_06" },
            { item = 200,    component = "COMPONENT_FMCLIP_07" },
            { item = 200,    component = "COMPONENT_FMCLIP_08" },
            { item = 200,    component = "COMPONENT_FMCLIP_09" },
            { item = 200,    component = "COMPONENT_FMCLIP_10" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_FMFLSH_12" },
            { item = "free", component = "COMPONENT_FMFLSH_13" },
            { item = "free", component = "COMPONENT_FMFLSH_14" },
            { item = "free", component = "COMPONENT_FMFLSH_15" },
            { item = "free", component = "COMPONENT_FMFLSH_16" },
            { item = "free", component = "COMPONENT_FMFLSH_17" },
            { item = "free", component = "COMPONENT_FMFLSH_18" },
            { item = "free", component = "COMPONENT_FMFLSH_19" },
            { item = "free", component = "COMPONENT_FMFLSH_20" },
            { item = "free", component = "COMPONENT_FMFLSH_21" },
            { item = "free", component = "COMPONENT_FMFLSH_22" },
            { item = "free", component = "COMPONENT_FMFLSH_23" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_FMSCOPE_09" },
            { item = "free", component = "COMPONENT_FMSCOPE_11" },
            { item = "free", component = "COMPONENT_FMSCOPE_12" },
            { item = "free", component = "COMPONENT_FMSCOPE_13" },
            { item = "free", component = "COMPONENT_FMSCOPE_14" },
            { item = "free", component = "COMPONENT_FMSCOPE_15" },
            { item = "free", component = "COMPONENT_FMSCOPE_17" },
            { item = "free", component = "COMPONENT_FMSCOPE_18" },
            { item = "free", component = "COMPONENT_FMSCOPE_22" },
            { item = "free", component = "COMPONENT_FMSCOPE_23" },
            { item = "free", component = "COMPONENT_FMSCOPE_36" },
            { item = "free", component = "COMPONENT_FMSCOPE_37" },
            { item = "free", component = "COMPONENT_FMSCOPE_39" },
            { item = "free", component = "COMPONENT_FMSCOPE_40" },
            { item = "free", component = "COMPONENT_FMSCOPE_41" },
        },
        ["stock"] = {
            { item = "free", component = "COMPONENT_FM1_HONEYBADGER_STOCK_01", default = true },
            { item = "free", component = "COMPONENT_FM1_HONEYBADGER_STOCK_02" },
        },
    },
    ["weapon_ak74_1"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_AK74_CLIP_01", default = true },
            { item = 200,    component = "COMPONENT_AK74_CLIP_02" },
            { item = 200,    component = "COMPONENT_AK74_CLIP_03" },
            { item = 200,    component = "COMPONENT_AK74_CLIP_04" },
            { item = 200,    component = "COMPONENT_AK74_CLIP_05" },
            { item = 200,    component = "COMPONENT_AK74_CLIP_06" },
            { item = 200,    component = "COMPONENT_AK74_CLIP_07" },
            -- {item = "free", component = "COMPONENT_AK74_CLIP_08"},
            --{item = "free", component = "COMPONENT_AK74_CLIP_09"},
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AK74_FLSH_01" },
            { item = "free", component = "COMPONENT_AK74_FLSH_02" },
            { item = "free", component = "COMPONENT_AK74_FLSH_03" },
            { item = "free", component = "COMPONENT_AK74_FLSH_04" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AK74_GRIP_01" },
            { item = "free", component = "COMPONENT_AK74_GRIP_02" },
            { item = "free", component = "COMPONENT_AK74_GRIP_03" },
            { item = "free", component = "COMPONENT_AK74_GRIP_04" },
            { item = "free", component = "COMPONENT_AK74_GRIP_05" },
            { item = "free", component = "COMPONENT_AK74_GRIP_06" },
            { item = "free", component = "COMPONENT_AK74_GRIP_07" },
            { item = "free", component = "COMPONENT_AK74_GRIP_08" },
            { item = "free", component = "COMPONENT_AK74_GRIP_09" },
            { item = "free", component = "COMPONENT_AK74_GRIP_10" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AK74_MUZ_01" },
            { item = "free", component = "COMPONENT_AK74_MUZ_02" },
            { item = "free", component = "COMPONENT_AK74_MUZ_03" },
            { item = "free", component = "COMPONENT_AK74_MUZ_04" },
            { item = 500,    component = "COMPONENT_AK74_MUZ_05" },
            { item = 500,    component = "COMPONENT_AK74_MUZ_06" },
            { item = 500,    component = "COMPONENT_AK74_MUZ_07" },
            { item = 500,    component = "COMPONENT_AK74_MUZ_08" },
            { item = 500,    component = "COMPONENT_AK74_MUZ_09" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AK74_SCOPE_01" },
            { item = "free", component = "COMPONENT_AK74_SCOPE_02" },
            { item = "free", component = "COMPONENT_AK74_SCOPE_03" },
            { item = "free", component = "COMPONENT_AK74_SCOPE_04" },
            { item = "free", component = "COMPONENT_AK74_SCOPE_05" },
            { item = "free", component = "COMPONENT_AK74_SCOPE_06" },
            { item = "free", component = "COMPONENT_AK74_SCOPE_07" },
            { item = "free", component = "COMPONENT_AK74_SCOPE_08" },
            { item = 500,    component = "COMPONENT_AK74_SCOPE_09" },
        },
        ["stock"] = {
            { item = "free", component = "COMPONENT_AK74_STOCK_01", default = true },
            { item = "free", component = "COMPONENT_AK74_STOCK_02" },
            { item = "free", component = "COMPONENT_AK74_STOCK_03" },
            { item = "free", component = "COMPONENT_AK74_STOCK_04" },
            { item = "free", component = "COMPONENT_AK74_STOCK_05" },
            { item = "free", component = "COMPONENT_AK74_STOCK_06" },
            { item = "free", component = "COMPONENT_AK74_STOCK_07" },
            { item = "free", component = "COMPONENT_AK74_STOCK_08" },
        },
    },


    -- Malee
    ["weapon_switchblade"] = {
        ["camo"] = {
            { item = "free", component = "COMPONENT_SWITCHBLADE_VARMOD_BASE", default = true },
            { item = "free", component = "COMPONENT_SWITCHBLADE_VARMOD_VAR1" },
            { item = "free", component = "COMPONENT_SWITCHBLADE_VARMOD_VAR2" },
        }
    },
    ["weapon_knuckle"] = {
        ["camo"] = {
            { item = "free", component = "COMPONENT_KNUCKLE_VARMOD_BASE",   default = true },
            { item = "free", component = "COMPONENT_KNUCKLE_VARMOD_PIMP" },
            { item = "free", component = "COMPONENT_KNUCKLE_VARMOD_BALLAS" },
            { item = "free", component = "COMPONENT_KNUCKLE_VARMOD_DOLLAR" },
            { item = "free", component = "COMPONENT_KNUCKLE_VARMOD_DIAMOND" },
            { item = "free", component = "COMPONENT_KNUCKLE_VARMOD_HATE" },
            { item = "free", component = "COMPONENT_KNUCKLE_VARMOD_LOVE" },
            { item = "free", component = "COMPONENT_KNUCKLE_VARMOD_PLAYER" },
            { item = "free", component = "COMPONENT_KNUCKLE_VARMOD_KING" },
            { item = "free", component = "COMPONENT_KNUCKLE_VARMOD_VAGOS" },
        }
    },
    ["weapon_combatpistol"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_COMBATPISTOL_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_COMBATPISTOL_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_PI_FLSH" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_PI_SUPP" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER" },
        }
    },
    ["weapon_appistol"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_APPISTOL_CLIP_01", default = true },
            { item = 100,    component = "COMPONENT_APPISTOL_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_PI_FLSH" },
        },
        ["muzzle"] = {
            { item = 300, component = "COMPONENT_AT_PI_SUPP" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_APPISTOL_VARMOD_LUXE" },
        }
    },
    ["weapon_pistol50"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_PISTOL50_CLIP_01", default = true },
            { item = 100,    component = "COMPONENT_PISTOL50_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_PI_FLSH" },
        },
        ["muzzle"] = {
            { item = 300, component = "COMPONENT_AT_AR_SUPP_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_PISTOL50_VARMOD_LUXE" },
        }
    },
    ["weapon_revolver"] = {
        ["camo"] = {
            { item = "free", component = "COMPONENT_REVOLVER_VARMOD_BOSS" },
            { item = "free", component = "COMPONENT_REVOLVER_VARMOD_GOON" },
        }
    },
    ["weapon_snspistol"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_SNSPISTOL_CLIP_01" },
            { item = "free", component = "COMPONENT_SNSPISTOL_CLIP_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_SNSPISTOL_VARMOD_LOWRIDER" },
        }
    },
    ["weapon_revolver_mk2"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_REVOLVER_MK2_CLIP_01", default = true },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_PI_FLSH" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SIGHTS" },
            { item = "free", component = "COMPONENT_AT_SCOPE_MACRO_MK2" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_PI_COMP_03" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_REVOLVER_MK2_CAMO" },
            { item = "free", component = "COMPONENT_REVOLVER_MK2_CAMO_02" },
            { item = "free", component = "COMPONENT_REVOLVER_MK2_CAMO_03" },
            { item = "free", component = "COMPONENT_REVOLVER_MK2_CAMO_04" },
            { item = "free", component = "COMPONENT_REVOLVER_MK2_CAMO_05" },
            { item = "free", component = "COMPONENT_REVOLVER_MK2_CAMO_06" },
            { item = "free", component = "COMPONENT_REVOLVER_MK2_CAMO_07" },
            { item = "free", component = "COMPONENT_REVOLVER_MK2_CAMO_08" },
            { item = "free", component = "COMPONENT_REVOLVER_MK2_CAMO_09" },
            { item = "free", component = "COMPONENT_REVOLVER_MK2_CAMO_10" },
            { item = "free", component = "COMPONENT_REVOLVER_MK2_CAMO_IND_01" },
        }
    },
    ["weapon_smg_mk2"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_SMG_MK2_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_SMG_MK2_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2" },
            { item = "free", component = "COMPONENT_AT_SCOPE_SMALL_SMG_MK2" },
            { item = "free", component = "COMPONENT_AT_SIGHTS_SMG" },
        },
        ["barrel0"] = {
            { item = "free", component = "COMPONENT_AT_SB_BARREL_01", default = true },
            { item = "free", component = "COMPONENT_AT_SB_BARREL_02" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_MUZZLE_01" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_02" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_03" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_04" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_05" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_06" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_07" },
            { item = 500,    component = "COMPONENT_AT_PI_SUPP" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_02" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_03" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_04" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_05" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_06" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_07" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_08" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_09" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_10" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_IND_01" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_SLIDE" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_02_SLIDE" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_03_SLIDE" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_04_SLIDE" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_05_SLIDE" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_06_SLIDE" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_07_SLIDE" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_08_SLIDE" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_09_SLIDE" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_10_SLIDE" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_IND_01_SLIDE" },
        }
    },
    ["weapon_snspistol_mk2"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_PI_FLSH_03" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_PI_RAIL_02" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_PI_SUPP_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_02" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_03" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_04" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_05" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_06" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_07" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_08" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_09" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_10" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_IND_01" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_SLIDE" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_02_SLIDE" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_03_SLIDE" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_04_SLIDE" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_05_SLIDE" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_06_SLIDE" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_07_SLIDE" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_08_SLIDE" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_09_SLIDE" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_10_SLIDE" },
            { item = "free", component = "COMPONENT_SNSPISTOL_MK2_CAMO_IND_01_SLIDE" },
        }
    },
    ["weapon_vintagepistol"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_VINTAGEPISTOL_CLIP_01" },
            { item = "free", component = "COMPONENT_VINTAGEPISTOL_CLIP_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_AT_PI_SUPP" },
        }
    },
    ["weapon_raypistol"] = {
        ["camo"] = {
            { item = "free", component = "COMPONENT_RAYPISTOL_VARMOD_XMAS18" },
        }
    },
    ["weapon_ceramicpistol"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_CERAMICPISTOL_CLIP_01" },
            { item = "free", component = "COMPONENT_CERAMICPISTOL_CLIP_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_CERAMICPISTOL_SUPP" },
        }
    },
    --smg
    ["weapon_smg"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_SMG_CLIP_01", default = true },
            { item = 150,    component = "COMPONENT_SMG_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_MACRO_02" },
        },
        ["muzzle"] = {
            { item = 500, component = "COMPONENT_AT_PI_SUPP" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_SMG_VARMOD_LUXE" },
        }
    },
    ["weapon_assaultsmg"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_ASSAULTSMG_CLIP_01", default = true },
            { item = 150,    component = "COMPONENT_ASSAULTSMG_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_MACRO" },
        },
        ["muzzle"] = {
            { item = 500, component = "COMPONENT_AT_AR_SUPP_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER" },
        }
    },
    ["weapon_minismg_mk2"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_SMG_MK2_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_SMG_MK2_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SIGHTS_SMG" },
            { item = "free", component = "COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2" },
            { item = "free", component = "COMPONENT_AT_SCOPE_SMALL_SMG_MK2" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_PI_SUPP" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_01" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_02" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_03" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_04" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_05" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_06" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_07" },
        },
        ["barrel"] = {
            { item = "free", component = "COMPONENT_AT_SB_BARREL_01", default = true },
            { item = "free", component = "COMPONENT_AT_SB_BARREL_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_02" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_03" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_04" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_05" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_06" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_07" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_08" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_09" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_10" },
            { item = "free", component = "COMPONENT_SMG_MK2_CAMO_IND_01" },
        }
    },
    ["weapon_machinepistol"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_MACHINEPISTOL_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_MACHINEPISTOL_CLIP_02" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_PI_SUPP" },
        },
    },
    --Shotguns
    ["weapon_pumpshotgun"] = {
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_ACOMPONENT_AT_AR_FLSHT_AR_FLSH" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_SR_SUPP" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER" },
        },
    },
    ["weapon_sawnoffshotgun"] = {
        ["camo"] = {
            { item = "free", component = "COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE" },
        },
    },
    ["weapon_assaultshotgun"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_ASSAULTSHOTGUN_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_ASSAULTSHOTGUN_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_AR_SUPP" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP" },
        },
    },
    ["weapon_bullpupshotgun"] = {
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_AR_SUPP_02" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP" },
        },
    },
    ["weapon_pumpshotgun_mk2"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_01",           default = true },
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_INCENDIARY" },
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_ARMORPIERCING" },
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_HOLLOWPOINT" },
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_EXPLOSIVE" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SIGHTS" },
            { item = "free", component = "COMPONENT_AT_SCOPE_MACRO_MK2" },
            { item = "free", component = "COMPONENT_AT_SCOPE_SMALL_MK2" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_SR_SUPP_03" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_08" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CAMO" },
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_02" },
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_03" },
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_04" },
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_05" },
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_06" },
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_07" },
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_08" },
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_09" },
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_10" },
            { item = "free", component = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_IND_01" },
        }
    },
    ["weapon_heavyshotgun"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_HEAVYSHOTGUN_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_HEAVYSHOTGUN_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_AR_SUPP_02" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP" },
        },
    },
    ["weapon_autoshotgun"] = {
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_AR_SUPP" },
        },
    },
    --Rifles

    ["weapon_heavyrifle"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_HEAVYRIFLE_CLIP_01", default = true },
            { item = 200,    component = "COMPONENT_HEAVYRIFLE_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["muzzle"] = {
            { item = 500, component = "COMPONENT_AT_AR_SUPP" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_HEAVYRIFLE_CAMO1" },
        },
    },

    ["weapon_assaultrifle"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_ASSAULTRIFLE_CLIP_01", default = true },
            { item = 200,    component = "COMPONENT_ASSAULTRIFLE_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_MACRO" },
        },
        ["muzzle"] = {
            { item = 500, component = "COMPONENT_AT_AR_SUPP_02" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_ASSAULTRIFLE_VARMOD_LUXE" },
        },
    },
    ["weapon_carbinerifle"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_CARBINERIFLE_CLIP_01", default = true },
            { item = 200,    component = "COMPONENT_CARBINERIFLE_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_MEDIUM" },
        },
        ["muzzle"] = {
            { item = 500, component = "COMPONENT_AT_AR_SUPP" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_CARBINERIFLE_VARMOD_LUXE" },
        },
    },
    ["weapon_advancedrifle"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_ADVANCEDRIFLE_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_ADVANCEDRIFLE_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_SMALL" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_AR_SUPP" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE" },
        },
    },
    ["weapon_specialcarbine"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_SPECIALCARBINE_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_SPECIALCARBINE_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_MEDIUM" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_AR_SUPP_02" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER" },
        },
    },
    ["weapon_bullpuprifle"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_SMALL" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_AR_SUPP" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_VARMOD_LOW" },
        },
    },
    ["weapon_bullpuprifle_mk2"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_01", default = true },
            { item = 15000,  component = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SIGHTS" },
            { item = "free", component = "COMPONENT_AT_SCOPE_MACRO_02_MK2" },
            { item = "free", component = "COMPONENT_AT_SCOPE_SMALL_MK2" },
        },
        ["barrel"] = {
            { item = "free", component = "COMPONENT_AT_BP_BARREL_01", default = true },
            { item = "free", component = "COMPONENT_AT_BP_BARREL_02" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_AR_SUPP" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_01" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_02" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_03" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_04" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_05" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_06" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_07" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO" },
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_02" },
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_03" },
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_04" },
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_05" },
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_06" },
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_07" },
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_08" },
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_09" },
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_10" },
            { item = "free", component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_IND_01" },
        }
    },
    ["weapon_assaultrifle_mk2"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_01", default = true },
            { item = 500,    component = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_02" },
        },
        ["grip"] = {
            { item = 600, component = "COMPONENT_AT_AR_AFGRIP_02" },
        },
        ["flashlight"] = {
            { item = 100, component = "COMPONENT_AT_AR_FLSH" },
        },
        ["scope"] = {
            { item = 150, component = "COMPONENT_AT_SIGHTS" },
            { item = 200, component = "COMPONENT_AT_SCOPE_MACRO_MK2" },
            { item = 250, component = "COMPONENT_AT_SCOPE_MEDIUM_MK2" },
        },
        ["muzzle"] = {
            { item = 50, component = "COMPONENT_AT_AR_SUPP_02" },
            { item = 50, component = "COMPONENT_AT_MUZZLE_01" },
            { item = 50, component = "COMPONENT_AT_MUZZLE_02" },
            { item = 50, component = "COMPONENT_AT_MUZZLE_03" },
            { item = 50, component = "COMPONENT_AT_MUZZLE_04" },
            { item = 50, component = "COMPONENT_AT_MUZZLE_05" },
            { item = 50, component = "COMPONENT_AT_MUZZLE_06" },
            { item = 50, component = "COMPONENT_AT_MUZZLE_07" },
        },
        ["barrel"] = {
            { item = 75, component = "COMPONENT_AT_AR_BARREL_01", default = true },
            { item = 75, component = "COMPONENT_AT_AR_BARREL_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO" },
            { item = "free", component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_02" },
            { item = "free", component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_03" },
            { item = "free", component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_04" },
            { item = "free", component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_05" },
            { item = "free", component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_06" },
            { item = "free", component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_07" },
            { item = "free", component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_08" },
            { item = "free", component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_09" },
            { item = "free", component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_10" },
            { item = "free", component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_IND_01" },
        }
    },
    ["weapon_carbinerifle_mk2"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_CARBINERIFLE_MK2_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_CARBINERIFLE_MK2_CLIP_02" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SIGHTS" },
            { item = "free", component = "COMPONENT_AT_SCOPE_MACRO_MK2" },
            { item = "free", component = "COMPONENT_AT_SCOPE_MEDIUM_MK2" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_AR_SUPP" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_01" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_02" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_03" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_04" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_05" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_06" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_07" },
        },
        ["barrel"] = {
            { item = "free", component = "COMPONENT_AT_CR_BARREL_01", default = true },
            { item = "free", component = "COMPONENT_AT_CR_BARREL_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_CARBINERIFLE_MK2_CAMO" },
            { item = "free", component = "COMPONENT_CARBINERIFLE_MK2_CAMO_02" },
            { item = "free", component = "COMPONENT_CARBINERIFLE_MK2_CAMO_03" },
            { item = "free", component = "COMPONENT_CARBINERIFLE_MK2_CAMO_04" },
            { item = "free", component = "COMPONENT_CARBINERIFLE_MK2_CAMO_05" },
            { item = "free", component = "COMPONENT_CARBINERIFLE_MK2_CAMO_06" },
            { item = "free", component = "COMPONENT_CARBINERIFLE_MK2_CAMO_07" },
            { item = "free", component = "COMPONENT_CARBINERIFLE_MK2_CAMO_08" },
            { item = "free", component = "COMPONENT_CARBINERIFLE_MK2_CAMO_09" },
            { item = "free", component = "COMPONENT_CARBINERIFLE_MK2_CAMO_10" },
            { item = "free", component = "COMPONENT_CARBINERIFLE_MK2_CAMO_IND_01" },
        }
    },
    ["weapon_militaryrifle"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_MILITARYRIFLE_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_MILITARYRIFLE_CLIP_02" },
            { item = "free", component = "COMPONENT_MILITARYRIFLE_SIGHT_01" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_SMALL" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_AR_SUPP" },
        },
    },
    ["weapon_tacticalrifle"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_TACTICALRIFLE_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_TACTICALRIFLE_CLIP_02" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH_REH" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_AR_SUPP_02" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP" },
        },
    },
    --Machine Guns
    ["weapon_mg"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_MG_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_MG_CLIP_02" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_SMALL_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_MG_VARMOD_LOWRIDER" },
        },
    },
    ["weapon_combatmg"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_COMBATMG_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_COMBATMG_CLIP_02" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_MEDIUM" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_COMBATMG_VARMOD_LOWRIDER" },
        },
    },
    ["weapon_combatmg_mk2"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_COMBATMG_MK2_CLIP_01", default = true },
            { item = 1000,   component = "COMPONENT_COMBATMG_MK2_CLIP_02" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP_02" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SIGHTS" },
            { item = "free", component = "COMPONENT_AT_SCOPE_SMALL_MK2" },
            { item = "free", component = "COMPONENT_AT_SCOPE_MEDIUM_MK2" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_MUZZLE_01" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_02" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_03" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_04" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_05" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_06" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_07" },
        },
        ["barrel"] = {
            { item = "free", component = "COMPONENT_AT_MG_BARREL_01", default = true },
            { item = "free", component = "COMPONENT_AT_MG_BARREL_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_COMBATMG_MK2_CAMO" },
            { item = "free", component = "COMPONENT_COMBATMG_MK2_CAMO_02" },
            { item = "free", component = "COMPONENT_COMBATMG_MK2_CAMO_03" },
            { item = "free", component = "COMPONENT_COMBATMG_MK2_CAMO_04" },
            { item = "free", component = "COMPONENT_COMBATMG_MK2_CAMO_05" },
            { item = "free", component = "COMPONENT_COMBATMG_MK2_CAMO_06" },
            { item = "free", component = "COMPONENT_COMBATMG_MK2_CAMO_07" },
            { item = "free", component = "COMPONENT_COMBATMG_MK2_CAMO_08" },
            { item = "free", component = "COMPONENT_COMBATMG_MK2_CAMO_09" },
            { item = "free", component = "COMPONENT_COMBATMG_MK2_CAMO_10" },
            { item = "free", component = "COMPONENT_COMBATMG_MK2_CAMO_IND_01" },
        }
    },
    ["weapon_gusenberg"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_GUSENBERG_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_GUSENBERG_CLIP_02" },
        },
    },
    --Sniper Rifles
    ["weapon_sniperrifle"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_SNIPERRIFLE_CLIP_01", default = true },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_LARGE" },
            { item = "free", component = "COMPONENT_AT_SCOPE_MAX" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_AR_SUPP_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_SNIPERRIFLE_VARMOD_LUXE" },
        },
    },
    ["weapon_heavysniper"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_HEAVYSNIPER_CLIP_01", default = true },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_LARGE" },
            { item = "free", component = "COMPONENT_AT_SCOPE_MAX" },
        },
    },
    ["weapon_marksmanrifle_mk2"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_02" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SIGHTS" },
            { item = "free", component = "COMPONENT_AT_SCOPE_MEDIUM_MK2" },
            { item = "free", component = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_AR_SUPP" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_01" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_02" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_03" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_04" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_05" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_06" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_07" },
        },
        ["barrel"] = {
            { item = "free", component = "COMPONENT_AT_MRFL_BARREL_01", default = true },
            { item = "free", component = "COMPONENT_AT_MRFL_BARREL_02" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_MK2_CAMO" },
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_02" },
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_03" },
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_04" },
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_05" },
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_06" },
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_07" },
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_08" },
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_09" },
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_10" },
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_IND_01" },
        }
    },
    ["weapon_heavysniper_mk2"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_01",           default = true },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_02" },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY" },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING" },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ" },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_EXPLOSIVE" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_LARGE_MK2" },
            { item = "free", component = "COMPONENT_AT_SCOPE_MAX" },
            { item = "free", component = "COMPONENT_AT_SCOPE_NV" },
            { item = "free", component = "COMPONENT_AT_SCOPE_THERMAL" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_SR_SUPP_03" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_08" },
            { item = "free", component = "COMPONENT_AT_MUZZLE_09" },
        },
        ["barrel"] = {
            { item = "free", component = "COMPONENT_AT_SR_BARREL_01", default = true },
            { item = "free", component = "COMPONENT_AT_SR_BARREL_02" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP_02" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CAMO" },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_02" },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_03" },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_04" },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_05" },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_06" },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_07" },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_08" },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_09" },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_10" },
            { item = "free", component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_IND_01" },
        }
    },
    ["weapon_marksmanrifle"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_CLIP_01", default = true },
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_CLIP_02" },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["muzzle"] = {
            { item = "free", component = "COMPONENT_AT_AR_SUPP" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP" },
        },
        ["camo"] = {
            { item = "free", component = "COMPONENT_MARKSMANRIFLE_VARMOD_LUXE" },
        }
    },
    --Heavy Weapons
    ["weapon_grenadelauncher"] = {
        ["magazine"] = {
            { item = "free", component = "COMPONENT_GRENADELAUNCHER_CLIP_01", default = true },
        },
        ["scope"] = {
            { item = "free", component = "COMPONENT_AT_SCOPE_SMALL" },
        },
        ["flashlight"] = {
            { item = "free", component = "COMPONENT_AT_AR_FLSH" },
        },
        ["grip"] = {
            { item = "free", component = "COMPONENT_AT_AR_AFGRIP" },
        },
    },
}
