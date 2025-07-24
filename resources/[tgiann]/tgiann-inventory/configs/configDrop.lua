config.objectDrop = {
    active = true,                  -- if true, the first item dropped on the ground appears as a prop, if false, it appears as a marker
    defaultObject = {               -- For items not added in itemToObject
        hash = `prop_paper_bag_01`, -- prop Hash
        groundRotation = { 0.0, 0.0, 0.0 },
        handRotation = {
            { 0.13140606098295, 0.022559683884654, -0.082663316658163 }, -- pos
            { -40.18882271093,  -0.24538857512052, 16.85144585768 }      -- rot
        }
    },
    multipleItemsObject = {       -- this prop appears if there is more than one item on the floor
        hash = `ng_proc_box_01a`, -- prop Hash
        groundRotation = { 90.0, 0.0, 0.0 },
        handRotation = {
            { 0.13140606098295, 0.022559683884654, -0.082663316658163 }, -- pos
            { -40.18882271093,  -0.24538857512052, 16.85144585768 }      -- rot
        }
    },
    itemToObject = { -- itemName, hash
        goldbar = {
            hash = `hei_prop_heist_gold_bar`,
            groundRotation = { 0.0, 0.0, 0.0 },
            handRotation = {
                { 0.065023312703829, 0.018979799071576, -0.032637740797306 }, -- pos
                { 23.929631747246,   -4.040881842375,   -12.166237375715 }    -- rot
            }
        },
        television = {
            hash = `xs_prop_arena_screen_tv_01`,
            groundRotation = { -90.0, 0.0, 0.0 },
            handRotation = {
                { 0.065023312703829, 0.018979799071576, 0.032637740797306 }, -- pos
                { 23.929631747246,   -4.040881842375,   -12.166237375715 }   -- rot
            }
        },
        present = {
            hash = `xm3_prop_xm3_present_01a`,
            groundRotation = { 00.0, 0.0, 0.0 },
            handRotation = {
                { 0.065023312703829, 0.018979799071576, 0.032637740797306 }, -- pos
                { 23.929631747246,   -4.040881842375,   -12.166237375715 }   -- rot
            }
        }
    }
}
