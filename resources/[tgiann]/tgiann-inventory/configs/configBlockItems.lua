-- The interaction of the items you add here is limited. for example, you can add items here that you do not want to be transferred to someone else
config.blockItems = {
    ["testitem"] = {     -- Item name
        drop = true,     -- if true, player can't drop the item
        glovebox = true, -- if true the player cannot put the item in the glovebox
        trunk = true,    -- if true the player cannot put the item in the trunk
        stash = true,    -- if true the player cannot put the item in the any stash
        give = true,     -- if true the player cannot give the item to someone else
        player = true,   -- cannot take or give an item from another player when true
        throw = true,    -- if true, the player cannot throw the item
    },
}
