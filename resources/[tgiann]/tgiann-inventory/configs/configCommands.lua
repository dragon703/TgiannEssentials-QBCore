config.commands = {
    admin = {
        giveitem = "giveitem",
        setitem = "setitem",
        clearinv = "clearinv",
        backpack = "backpack",
        deleteinv = "deleteinv",
        openinv = "openinv",
        checkitem = "checkitem",
        items = "items"
    },
    player = {
        givecash = {
            active = true,
            command = "givecash"
        },
        rob = { -- You can edit canRobTarget function in tgiann-inventory/client/editable.lua
            active = true,
            command = "rob",
            progressTime = {
                min = 5000,
                max = 7000
            },
            animation = {
                animDict = 'random@shop_robbery',
                anim = 'robbery_action_b',
                flags = 16,
            }
        }
    },
    convert = {
        convertItemsFile = "convertitems",   -- imports qb items.lua and esx items table into enventerin's items table
        convertqb = "convertqb",             -- convert inventory data such as player, stash, glovebox to tgiann inventory
        convertox = "convertox",             -- convert inventory data such as player, stash, glovebox to tgiann inventory
        convertqsinv = "convertqsinv",       -- convert inventory data such as player, stash, glovebox to tgiann inventory
        convertcodeminv = "convertcodeminv", -- convert inventory data such as player, stash, glovebox to tgiann inventory
    }
}
