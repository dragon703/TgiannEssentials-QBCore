--[[
    Update Video: https://youtu.be/Frs-YMCIiaU
    To ensure the system works, add the default item list to the items.lua file or configure the settings below. Make sure the item is unique and usable.

    t_armor_heavy = { name = 't_armor_heavy', label = 'Heavy Armor', weight = 100, type = 'item', image = 't_armor_heavy.png', unique = true, useable = true, shouldClose = true, description = '' },
    t_armor_light = { name = 't_armor_light', label = 'Light Armor', weight = 100, type = 'item', image = 't_armor_light.png', unique = true, useable = true, shouldClose = true, description = '' },

    t_armor_plate_heavy = { name = 't_armor_plate_heavy', label = 'Heavy Armor Plate', weight = 100, type = 'item', image = 't_armor_plate_heavy.png', unique = false, useable = true, shouldClose = true, description = '' },
    t_armor_plate_light = { name = 't_armor_plate_light', label = 'Light Armor Plate', weight = 100, type = 'item', image = 't_armor_plate_light.png', unique = false, useable = true, shouldClose = true, description = '' },
]]

---@type ConfigRealisticArmor
config.realisticArmor = {
    active = true,      -- If set to `true`, this system will be activated.
    checkClothe = true, -- If true, if the player has no armor value and is wearing armor as an outfit, it will remove this outfit
    armorPlateItems = {
        {
            itemName = 't_armor_plate_heavy', -- Item name
            addArmor = 50,                    -- The armor value that will be added when the player equips armor plate.
            progressbar = {
                active = true,
                label = "wearingPlate", -- u can change from language file
                time = 4000,
                anims = {
                    animDict = "missmic4",
                    anim = "michael_tux_fidget",
                    flags = 49,
                },
                disables = {
                    disableMovement = false,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }
            }
        },
        {
            itemName = 't_armor_plate_light', -- Item name
            addArmor = 25,                    -- The armor value that will be added when the player equips armor plate.
            progressbar = {
                active = true,
                label = "wearingPlate", -- u can change from language file
                time = 2100,
                anims = {
                    animDict = "missmic4",
                    anim = "michael_tux_fidget",
                    flags = 49,
                },
                disables = {
                    disableMovement = false,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }
            }
        }
    },
    armorItems = {
        {                               -- Item name
            itemName = 't_armor_heavy',
            maxArmor = 100,             -- The armor value that will be added when the player equips armor.
            progressbar = {
                active = true,          -- If set to `true`, a progress bar will be displayed when the player equips armor.
                label = "wearingArmor", -- u can change from language file
                time = 8000,            -- Progress bar time
                anims = {
                    animDict = "missmic4",
                    anim = "michael_tux_fidget",
                    flags = 49,
                },
                disables = {
                    disableMovement = false,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }
            },
            clothe = {
                active = true, -- If set to `true`, the player will wear the clothe armor.
                data = {
                    jobs = {
                        -- job with grade
                        ['police'] = {
                            [1] = {
                                [`mp_m_freemode_01`] = { drawable = 15, texture = 2 }, -- Male
                                [`mp_f_freemode_01`] = { drawable = 9, texture = 0 }   -- Female
                            },
                            [2] = {
                                [`mp_m_freemode_01`] = { drawable = 57, texture = 2 }, -- Male
                                [`mp_f_freemode_01`] = { drawable = 9, texture = 0 }   -- Female
                            },
                            other = {
                                [`mp_m_freemode_01`] = { drawable = 15, texture = 0 }, -- Male
                                [`mp_f_freemode_01`] = { drawable = 9, texture = 0 }   -- Female
                            }
                        },
                        -- Job without grade
                        ['ambulance'] = {
                            other = {
                                [`mp_m_freemode_01`] = { drawable = 58, texture = 0 },
                                [`mp_f_freemode_01`] = { drawable = 9, texture = 0 }
                            }
                        },
                    },
                    -- If the player does not meet any of the values in the jobs config section, the clothing data will change according to these values.
                    other = {
                        [`mp_m_freemode_01`] = { drawable = 1, texture = 1 }, -- Male
                        [`mp_f_freemode_01`] = { drawable = 9, texture = 0 }  -- Female
                    },
                }
            }
        },
        {
            itemName = 't_armor_light',
            maxArmor = 50,
            progressbar = {
                active = true,
                label = "wearingArmor", -- u can change from language file
                time = 5000,
                anims = {
                    animDict = "missmic4",
                    anim = "michael_tux_fidget",
                    flags = 49,
                },
                disables = {
                    disableMovement = false,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }
            }
        }
    }
}
