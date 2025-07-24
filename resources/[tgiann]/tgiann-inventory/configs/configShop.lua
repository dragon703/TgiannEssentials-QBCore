config.shopMoneyType = "cash"

config.ShopLocations = {
    {
        job = "police",           -- job name or null (delete this line if you want everyone to be able to open it)
        productsName = "weapons", -- config.Products object key name
        text = "Police Weapon Shop",
        maxDistance = 3,
        pressDistance = 2,
        blip = {
            sprite = 16,
            scale = 0.7,
            color = 2,
            label = "Police Weapon Shop"
        },
        locations = {
            {
                ped = `ig_terry`,
                coords = vector4(16.6227, -1110.8431, 29.7970, 243.8756),

            },
            {
                ped = `ig_terry`,
                coords = vector4(427.2638, -985.6949, 30.7112, 356.5403),
                blipDisable = true
            },
        }
    },
}

--[[
requiredJob Example:
    { name = 'weapon_bat',     price = 250,  amount = 250, type = 'weapon', requiredJob = { 'mechanic', 'police' } },
    { name = 'weapon_bat',     price = 250,  amount = 250, type = 'weapon', requiredJob = 'mechanic' },

requiredGrade Example:
    { name = 'weapon_bat',     price = 250,  amount = 250, type = 'weapon', requiredGrade = 3 },

requiredLicense Example: (QB - playerData.metadata.licences, ESX: esx_licanse)
    { name = 'weapon_bat',     price = 250,  amount = 250, type = 'weapon', requiredLicense = { 'weapon', 'air' } },
    { name = 'weapon_bat',     price = 250,  amount = 250, type = 'weapon', requiredLicense = 'weapon' },

requiredGang Example (Onyl For QB - playerData.gang.name)
    { name = 'weapon_bat',     price = 250,  amount = 250, type = 'weapon', requiredGang = { 'mechanic', 'police' } },
    { name = 'weapon_bat',     price = 250,  amount = 250, type = 'weapon', requiredGang = 'mechanic' },

]]

config.Products = {
    ['normal'] = {
        { name = 'tosti',         price = 2,   amount = 50,   type = 'item' },
        { name = 'water_bottle',  price = 2,   amount = 50,   type = 'item' },
        { name = 'kurkakola',     price = 2,   amount = 50,   type = 'item' },
        { name = 'twerks_candy',  price = 2,   amount = 50,   type = 'item' },
        { name = 'snikkel_candy', price = 2,   amount = 50,   type = 'item' },
        { name = 'sandwich',      price = 2,   amount = 50,   type = 'item' },
        { name = 'beer',          price = 7,   amount = 50,   type = 'item' },
        { name = 'whiskey',       price = 10,  amount = 50,   type = 'item' },
        { name = 'vodka',         price = 12,  amount = 50,   type = 'item' },
        { name = 'bandage',       price = 100, amount = 50,   type = 'item' },
        { name = 'lighter',       price = 2,   amount = 50,   type = 'item' },
        { name = 'rolling_paper', price = 2,   amount = 5000, type = 'item' },
    },
    ['liquor'] = {
        { name = 'beer',    price = 7,  amount = 50, type = 'item' },
        { name = 'whiskey', price = 10, amount = 50, type = 'item' },
        { name = 'vodka',   price = 12, amount = 50, type = 'item' },
    },
    ['hardware'] = {
        { name = 'lockpick',          price = 200, amount = 50,  type = 'item' },
        { name = 'weapon_wrench',     price = 250, amount = 250, type = 'item' },
        { name = 'weapon_hammer',     price = 250, amount = 250, type = 'item' },
        { name = 'repairkit',         price = 250, amount = 50,  type = 'item' },
        { name = 'screwdriverset',    price = 350, amount = 50,  type = 'item' },
        { name = 'phone',             price = 850, amount = 50,  type = 'item' },
        { name = 'radio',             price = 250, amount = 50,  type = 'item' },
        { name = 'binoculars',        price = 50,  amount = 50,  type = 'item' },
        { name = 'firework1',         price = 50,  amount = 50,  type = 'item' },
        { name = 'firework2',         price = 50,  amount = 50,  type = 'item' },
        { name = 'firework3',         price = 50,  amount = 50,  type = 'item' },
        { name = 'firework4',         price = 50,  amount = 50,  type = 'item' },
        { name = 'fitbit',            price = 400, amount = 150, type = 'item' },
        { name = 'cleaningkit',       price = 150, amount = 150, type = 'item' },
        { name = 'advancedrepairkit', price = 500, amount = 50,  type = 'item' },
    },
    ['weedshop'] = {
        { name = 'joint',          price = 10,  amount = 50,   type = 'item' },
        { name = 'weapon_poolcue', price = 100, amount = 50,   type = 'item' },
        { name = 'weed_nutrition', price = 20,  amount = 50,   type = 'item' },
        { name = 'empty_weed_bag', price = 2,   amount = 1000, type = 'item' },
        { name = 'rolling_paper',  price = 2,   amount = 1000, type = 'item' },
    },
    ['gearshop'] = {
        { name = 'diving_gear', price = 2500, amount = 10, type = 'item' },
        { name = 'jerry_can',   price = 200,  amount = 50, type = 'item' },
    },
    ['leisureshop'] = {
        { name = 'parachute',   price = 2500, amount = 10, type = 'item' },
        { name = 'binoculars',  price = 50,   amount = 50, type = 'item' },
        { name = 'diving_gear', price = 2500, amount = 10, type = 'item' },
        { name = 'diving_fill', price = 500,  amount = 10, type = 'item' },
    },
    ['weapons'] = {
        { name = 'weapon_knife',         price = 250,  amount = 250, type = 'weapon' },
        { name = 'weapon_bat',           price = 250,  amount = 250, type = 'weapon', requiredJob = { 'mechanic', 'police' } },
        { name = 'weapon_hatchet',       price = 250,  amount = 250, type = 'weapon' },
        { name = 'pistol_ammo',          price = 250,  amount = 250, type = 'item' },
        { name = 'weapon_pistol',        price = 2500, amount = 99,  type = 'weapon' },
        { name = 'weapon_snspistol',     price = 1500, amount = 5,   type = 'weapon', requiredJob = 'mechanic' },
        { name = 'weapon_vintagepistol', price = 4000, amount = 5,   type = 'weapon' },
    },
    ['casino'] = {
        { name = 'casinochips', price = 1, amount = 999999, type = 'item' }
    }
}
