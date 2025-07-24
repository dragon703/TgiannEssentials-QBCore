-- Update Video: https://youtu.be/-0E_XY2L4rY
config.canCarryMultipleItems = false -- If false, the player cannot pick up any other carryable item while already holding one.
config.carryItmes = {
    television = {                   -- Item name
        model = `xs_prop_arena_screen_tv_01`,
        bone = 28252,
        offset = vector3(0.2600, 0.1100, -0.1400),
        rot = vector3(96.1620, 168.9069, 84.2402),
        anim = {
            dict = "beachanims@molly",
            name = "beachanim_surf_clip"
        },
        disableKeys = { -- https://docs.fivem.net/docs/game-references/controls/
            21,         -- INPUT_SPRINT
            22,         -- INPUT_JUMP
        },
        moveRate = 0.5, -- https://docs.fivem.net/natives/?_0x085BF80FA50A39D1 (1.0 Default)
    },
    present = {
        model = `xm3_prop_xm3_present_01a`,
        bone = 28422,
        offset = vector3(0.0, -0.18, -0.16),
        rot = vector3(0.0, 0.0, 0.0),
        anim = {
            dict = "anim@heists@box_carry@",
            name = "idle"
        },
        disableKeys = {
            21, -- INPUT_SPRINT
        },
        moveRate = 1.0
    }
}
