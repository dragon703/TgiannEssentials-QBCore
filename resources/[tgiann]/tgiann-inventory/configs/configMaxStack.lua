-- Update Vide: https://youtu.be/BmUAN9OFQhY

-- 0 = no limit

config.defaultMaxStackAmount = 100 -- Sets the max limit for each item not in the config.maxStacks table

config.weaponMaxStack = {
    active = true, -- if true, the max stack of all weapons will be set to maxStack value.
    amount = 1,    -- if you add the weapon to the config.maxStacks table, this setting will be invalid for the weapon you added
}

config.maxStacks = {
    -- item name / max stack amount
    testitem         = 10,
    money            = 0, -- no limit
    money_item       = 0, -- no limit
    black_money      = 0, -- no limit
    black_money_item = 0, -- no limit
    weapon_petrolcan = 1,

    c_necklace       = 1,
    c_bproof         = 1,
    c_decal          = 1,
    c_torso          = 1,
    c_mask           = 1,
    c_helmet         = 1,
    c_glasses        = 1,
    c_bag            = 1,
    c_pants          = 1,
    c_shoes          = 1,
    c_bracelet       = 1,
    c_watch          = 1,
    c_ear            = 1,
    kposet           = 1,
    bkposet          = 1,
    clothe_set       = 1,
}
