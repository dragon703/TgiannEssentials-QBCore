config.craft = {}
config.defaultCraftJob = {}

local function registerCraft(category, label, items)
    assert(type(category) == "string", "Category must be a string")
    assert(type(label) == "string", "Label must be a string")
    assert(type(items) == "table", "Items must be a table")

    config.craft[#config.craft + 1] = {
        category = category,
        label = label,
        items = items
    }
end
exports("RegisterCraft", registerCraft)

local function registerJobCraft(jobName, label, items)
    assert(type(jobName) == "string", "Job name must be a string")
    assert(config.defaultCraftJob[jobName] == nil, ("Job %s already exists in defaultCraftJob").format(jobName))
    assert(type(label) == "string", "Label must be a string")
    assert(type(items) == "table", "Items must be a table")

    config.defaultCraftJob[jobName] = {
        label = label,
        items = items
    }
end
exports("RegisterJobCraft", registerJobCraft)

-- Default crafting
registerCraft("defaultCraft", "Main Craft", {
    {
        giveAmount = 1,
        name = 'testburger',
        costs = {
            ['testitem'] = 5,
            ['testitemuniq'] = 3,
        },
        duration = 5000, -- 5 seconds crafting times (optional)
        info = {
            label = "My Test Label for Burger"
        }
    },
    --[[
    {
        giveAmount = 1,
        name = 'lockpick',
        costs = {
            ['metalscrap'] = 22,
            ['plastic'] = 32,
        },
    },
    {
        giveAmount = 1,
        name = 'screwdriverset',
        costs = {
            ['metalscrap'] = 30,
            ['plastic'] = 42,
        },
    },
    {
        giveAmount = 1,
        name = 'electronickit',
        costs = {
            ['metalscrap'] = 30,
            ['plastic'] = 45,
            ['aluminum'] = 28,
        },
    },
    {
        giveAmount = 1,
        name = 'radioscanner',
        costs = {
            ['electronickit'] = 2,
            ['plastic'] = 52,
            ['steel'] = 40,
        },
    },
    {
        giveAmount = 1,
        name = 'gatecrack',
        costs = {
            ['metalscrap'] = 10,
            ['plastic'] = 50,
            ['aluminum'] = 30,
            ['iron'] = 17,
            ['electronickit'] = 2,
        },
    },
    ]]
})

-- Example for police
registerJobCraft("police", "Police Crafting", {
    {
        giveAmount = 1,
        name = 'handcuffs',
        costs = {
            ['metalscrap'] = 36,
            ['steel'] = 24,
            ['aluminum'] = 28,
        },
    },
    {
        giveAmount = 1,
        name = 'repairkit',
        costs = {
            ['metalscrap'] = 32,
            ['steel'] = 43,
            ['plastic'] = 61,
        },
    },
    {
        giveAmount = 1,
        name = 'pistol_ammo',
        costs = {
            ['metalscrap'] = 50,
            ['steel'] = 37,
            ['copper'] = 26,
        },
    },
    {
        giveAmount = 1,
        name = 'ironoxide',
        costs = {
            ['iron'] = 60,
            ['glass'] = 30,
        },
    },
    {
        giveAmount = 1,
        name = 'aluminumoxide',
        costs = {
            ['aluminum'] = 60,
            ['glass'] = 30,
        },
    },
    {
        giveAmount = 1,
        name = 'armor',
        costs = {
            ['iron'] = 33,
            ['steel'] = 44,
            ['plastic'] = 55,
            ['aluminum'] = 22,
        },
    },
    {
        giveAmount = 1,
        name = 'drill',
        costs = {
            ['iron'] = 50,
            ['steel'] = 50,
            ['screwdriverset'] = 3,
            ['advancedlockpick'] = 2,
        },
    },
})

local craftCategory = {}
for i = 1, #config.craft do
    craftCategory[i] = {
        craft = i,
        label = config.craft[i].label
    }
end

exports("CraftCategory", function()
    return craftCategory
end)
