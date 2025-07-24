-- Update Video: https://youtu.be/wNt_8OQ_CUQ

config.clotheBackpack = {
    active = true,                            --if you have a backpack in a suit, the weight limit and the number of slots of your inventory increases.
    -- I don't recommend increasing the number of slots. if the player removes the backpack, the slots will be deleted and the player's belongings will remain in invisible slots
    [`mp_m_freemode_01`] = {                  -- Male Ped
        [40] = { weight = 50000, slots = 0 }, -- increases the player's default weight limit by 50000
        [41] = { weight = 60000, slots = 0 },
        [44] = { weight = 50000, slots = 0 },
        [45] = { weight = 30000, slots = 0 },
        [81] = { weight = 60000, slots = 0 },
        [82] = { weight = 80000, slots = 0 },
        [85] = { weight = 150000, slots = 0 },
        [86] = { weight = 100000, slots = 0 },
    },
    [`mp_f_freemode_01`] = {                  -- Female ped
        [40] = { weight = 50000, slots = 0 }, -- increases the player's default weight limit by 50000
        [41] = { weight = 60000, slots = 0 },
        [44] = { weight = 50000, slots = 0 },
        [45] = { weight = 30000, slots = 0 },
        [81] = { weight = 60000, slots = 0 },
        [82] = { weight = 80000, slots = 0 },
        [85] = { weight = 150000, slots = 0 },
        [86] = { weight = 100000, slots = 0 },
    }
}
