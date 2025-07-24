--[[
    - this script needs tgiann-core script to work, you can download the script from your keymaster account
      Start tgiann-core script after es_extented/qb-core script and before tgiann-* scripts
      Adjust the tgiann-core config file according to the framework you are using

    Docs: https://tgiann.gitbook.io/tgiann/scripts/tgiann-inventory
	Other Language Files: https://discord.com/channels/813192868906532905/1307000341547454595 (Discord > Translations Thread)
]]

tgiCoreExports                        = exports["tgiann-core"]
config                                = tgiCoreExports:getConfig()
config.lang                           = "en"

-- The config.locale value is retrieved from tgiann-core.
config.locale.symbol                  = "$"

-- Recommendation:
-- It is recommended to use the needRegisterStash setting or disableClientOpenInventory setting to true.
-- If needRegisterStash is true, inventories not registered by the client cannot be opened
-- If disableClientOpenInventory is true, the client will not be able to trigger openinventory events or exports, so cheaters will not be able to open inventories on client side.
-- if you activate these two settings, you should edit all your scripts and move the openinventory exports or events to the server side.
-- while doing this, you must first register the inventory with register stash and write extra protections in your server side event that opens the inventory.
-- for example, if it is a police stash, checking the player's job first is an extra precaution against cheaters.
config.needRegisterStash              = false -- When true, the inventory must be registered with RegisterStash for stash and craft inventories. if the inventory is not registered. you cannot open the inventory with openInventory
config.disableClientOpenInventory     = {
	disabled = false,                         -- When true, openinventory events and exports triggered from client will not work
	ignoreTypeList = {                        -- When the type is in this list, it will not be disabled
		glovebox = true,                      -- Don't remove this
		trunk = true,                         -- Don't remove this
		drop = true,                          -- Don't remove this
		--crafting = true,
		--shop = true
	}
}

config.moneyAsItem                    = { -- https://docs.tgiann.com/scripts/tgiann-inventory/how-do-money-as-item
	active = true,
	items = {
		-- item name / money type
		qb = { -- for qb and qbox
			money_item = "cash",
			-- black_money  = "black_money" -- for black money
		},
		esx = { -- for esx
			money_item = "money",
			-- black_money  = "black_money" -- for black money
		},
	}
}

config.blockWeaponWheel               = true  -- If you don't have a script that blocks weaponwheel make it true, if you do have a script than false
config.preventHandWeaponChangingSlots = true  -- prevents the player from changing the slot of the weapon they are using
config.showItemLabelOnMainInventory   = false -- turn on/off the label of items in the main inventory
config.accessDropWhenInVehicle        = false -- if true, players can drop items and access drop inventory while in the vehicle
config.kickPlayerWhenHackingDatected  = false -- if true, the player will be kicked when the inventory hack is detected (U can edit ban function from editable)
config.autoEmote                      = false  -- if true, the player will automatically me and do the emote when the trunk etc is opened
config.inventorySaveTime              = 5    -- How often should updated inventory data be saved to the database? (Minute)
config.createDropWhenPlayerFull       = true  -- if true, when the player is full, the item will be dropped to the ground (only work with AddItem export)

-- false -  "serverid" -  "citizenid"
-- citizenid: QB: citizenid, ESX: identifier
config.contextGiveItemId              = "serverid"
config.contextGiveShowPlayerName      = true -- if true, the player name will be shown in the context menu when giving an item to another player

config.openOwner                      = {
	trunk = {
		active = false, -- When set to true, only the vehicle owner can open the trunk.
		openNpc = true, -- When the setting is active, the trunk can be used if the vehicle doesn't belong to anyone.
	},
	glovebox = {
		active = false, -- When set to true, only the vehicle owner can open the glovebox.
		openNpc = true, -- When the setting is active, the glovebox can be used if the vehicle doesn't belong to anyone.
	}
}

config.searchPlayer                   = {
	askTarget = {
		active = true, -- If true, when a player is searched, a request is sent to the other player to accept the search.		
		keys = {
			accept = { key = 246, label = "Y" },
			cancel = { key = 249, label = "N" },
		}
	},
	animation = {
		active = false, -- If true, the target player should play one of the following animations. if it's not playing one of the animations, it can't be searched.
		list = {  -- animation list
			{ name = "missminuteman_1ig_2", anim = "handsup_base", },
			{ name = "mp_arresting",        anim = "idle", },
		},
	},
	deadPlayer = true, -- if true, the player can be searched while dead.
}

config.openMaxDistance                = {
	player = 5, -- The distance the player can open the other player inventory
	trunk = 10, -- The distance the player can open the trunk
}

config.defaultSettings                = {
	blurbg = true, -- Sets the background blur setting of the player entering the server for the first time to the value in config.
	blurMenu = false, -- Sets the menu background blur setting of the player entering the server for the first time to the value in config. (causes these players to make the screen flicker)
	character = true, -- Sets the character visibility setting for the first player to enter the server to the value in config.

	-- if you leave only one color the player will not change the color of the ui
	-- if you are using tgiann-lumihud this setting will not work. colors will be changed from the /hud menu of lumihud
	-- only use hex color
	defaultColors = {
		{ label = "Green",              background = config.defaultColor.background, color = config.defaultColor.color }, -- The first index is set as the default color of the inventory.
		{ label = "Lime Green",         background = "#32CD32",                      color = "#252525" },
		{ label = "Sea Green",          background = "#2E8B57",                      color = "#fff" },
		{ label = "Bright Blue",        background = "#00BFFF",                      color = "#252525" },
		{ label = "Electric Blue",      background = "#7DF9FF",                      color = "#252525" },
		{ label = "Neon Red",           background = "#FF073A",                      color = "#fff" },
		{ label = "Electric Red",       background = "#FF3333",                      color = "#fff" },
		{ label = "Neon Orange",        background = "#FF4500",                      color = "#fff" },
		{ label = "Bright Orange",      background = "#FFA500",                      color = "#252525" },
		{ label = "Fluorescent Yellow", background = "#CCFF00",                      color = "#252525" },
		{ label = "Hot Pink",           background = "#FF69B4",                      color = "#fff" },
		{ label = "Deep Pink",          background = "#FF1493",                      color = "#fff" },
		{ label = "Fuchsia",            background = "#FF00FF",                      color = "#fff" },
		{ label = "Violet",             background = "#8A2BE2",                      color = "#fff" },
		{ label = "Plum",               background = "#DDA0DD",                      color = "#252525" },
		{ label = "Lavender",           background = "#E6E6FA",                      color = "#252525" },
		{ label = "Light Green",        background = "#90EE90",                      color = "#252525" },
		{ label = "Light Blue",         background = "#ADD8E6",                      color = "#252525" },
		{ label = "Golden",             background = "#FFD700",                      color = "#252525" },
		{ label = "Cobalt Blue",        background = "#0047AB",                      color = "#fff" },
		{ label = "Rose Red",           background = "#FFC0CB",                      color = "#252525" },
		{ label = "Peach",              background = "#FFDAB9",                      color = "#252525" },
		{ label = "Copper",             background = "#B87333",                      color = "#252525" },
		{ label = "Cream",              background = "#FFFDD0",                      color = "#252525" },
	}
}

--[[
-- Set this setting to false if you are not using tgiann-clothing or do not want clothes to be items
-- if you are using tgiann-clothing, make this and the config.clothingAsItem setting in clothing the same
-- false version; https://youtu.be/o7ZofZZ00fo
-- If config.clothingAsItem is true, make sure the following items are added to your item list
c_necklace = { name = "c_necklace", label = "Necklace (Clothe)", clothe = true, weight = 0, type = "item", unique = true, useable = false, shouldClose = false, description = "" },
c_bproof   = { name = "c_bproof", label = "Bullet Proof (Clothe)", clothe = true, weight = 0, type = "item", unique = true, useable = false, shouldClose = false, description = "" },
c_decal    = { name = "c_decal", label = "Decals (Clothe)", clothe = true, weight = 0, type = "item", unique = true, useable = false, shouldClose = false, description = "" },
c_torso    = { name = "c_torso", label = "Torso (Clothe)", clothe = true, weight = 0, type = "item", unique = true, useable = false, shouldClose = false, description = "" },
c_mask     = { name = "c_mask", label = "Mask (Clothe)", clothe = true, weight = 0, type = "item", unique = true, useable = false, shouldClose = false, description = "" },
c_helmet   = { name = "c_helmet", label = "Hat (Clothe)", clothe = true, weight = 0, type = "item", unique = true, useable = false, shouldClose = false, description = "" },
c_glasses  = { name = "c_glasses", label = "Glasses (Clothe)", clothe = true, weight = 0, type = "item", unique = true, useable = false, shouldClose = false, description = "" },
c_bag      = { name = "c_bag", label = "Bag (Clothe)", clothe = true, weight = 0, type = "item", unique = true, useable = false, shouldClose = false, description = "" },
c_pants    = { name = "c_pants", label = "Pants (Clothe)", clothe = true, weight = 0, type = "item", unique = true, useable = false, shouldClose = false, description = "" },
c_shoes    = { name = "c_shoes", label = "Shoes (Clothe)", clothe = true, weight = 0, type = "item", unique = true, useable = false, shouldClose = false, description = "" },
c_bracelet = { name = "c_bracelet", label = "Bracelet (Clothe)", clothe = true, weight = 0, type = "item", unique = true, useable = false, shouldClose = false, description = "" },
c_watch    = { name = "c_watch", label = "Watch (Clothe)", clothe = true, weight = 0, type = "item", unique = true, useable = false, shouldClose = false, description = "" },
c_ear      = { name = "c_ear", label = "Ear (Clothe)", clothe = true, weight = 0, type = "item", unique = true, useable = false, shouldClose = false, description = "" },
kposet     = { name = "kposet", label = "Clothes Bag", weight = 100, type = "item", unique = true, useable = true, shouldClose = false, description = "Special Bag to Store Your Clothes" }, -- Clothe small bag item
bkposet    = { name = "bkposet", label = "Clothes Bag Plus", weight = 300, type = "item", unique = true, useable = true, shouldClose = false, description = "Special Bag to Store Your Clothes" }, -- Clothe big bag item
clothe_set = { name = 'clothe_set', label = 'Clothe Set', weight = 0, type = 'item', image = 'clothe_set.png', clothe = true, unique = true, useable = true, shouldClose = false, description = '' }, -- Clothe set item
]]
config.clothingAsItem = true

-- Only works when clothingAsItem is false or Custom Script Clothe is active(https://docs.tgiann.com/scripts/tgiann-clothing/events-exports#custom-script-clothe)
config.naked = {
	male = {
		c_torso = {
			{ componentId = 8,  prop = 15, texture = 0 }, --tshirt
			{ componentId = 11, prop = 15, texture = 0 }, -- torso
			{ componentId = 3,  prop = 15, texture = 0 } -- arms
		},
		c_pants = {
			{ componentId = 4, prop = 61, texture = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 } }
		},
		c_shoes = { { componentId = 6, prop = 34, texture = 0 } },
		c_decal = { { componentId = 10, prop = 0, texture = 0 } },
		c_bag = { { componentId = 5, prop = 0, texture = 0 } },
		c_ear = { { componentId = 2, prop = -1, texture = -1 } },
		c_necklace = { { componentId = 7, prop = 0, texture = 0 } },
		c_bproof = { { componentId = 9, prop = 0, texture = 0 } },
		c_bracelet = { { componentId = 7, prop = -1, texture = -1 } },
		c_watch = { { componentId = 6, prop = -1, texture = -1 } },
		c_glasses = { { componentId = 1, prop = -1, texture = -1 } },
		c_helmet = { { componentId = 0, prop = -1, texture = -1 } },
		c_mask = { { componentId = 1, prop = 0, texture = 0 } },
	},
	female = {
		c_torso = {
			{ componentId = 8,  prop = 15, texture = 0 }, --tshirt
			{ componentId = 11, prop = 15, texture = 0 }, -- torso
			{ componentId = 3,  prop = 15, texture = 0 } -- arms
		},
		c_pants = {
			{ componentId = 4, prop = 62, texture = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 } }
		},
		c_shoes = { { componentId = 6, prop = 35, texture = 0 } },
		c_decal = { { componentId = 10, prop = 0, texture = 0 } },
		c_bag = { { componentId = 5, prop = 0, texture = 0 } },
		c_ear = { { componentId = 2, prop = -1, texture = -1 } },
		c_necklace = { { componentId = 7, prop = 0, texture = 0 } },
		c_bproof = { { componentId = 9, prop = 0, texture = 0 } },
		c_bracelet = { { componentId = 7, prop = -1, texture = -1 } },
		c_watch = { { componentId = 6, prop = -1, texture = -1 } },
		c_glasses = { { componentId = 1, prop = -1, texture = -1 } },
		c_helmet = { { componentId = 0, prop = -1, texture = -1 } },
		c_mask = { { componentId = 1, prop = 0, texture = 0 } },
	}
}

-- You can make the inventory, trunk and glovebox keys the same if you want
config.keys = {
	inventoryClose = { "Escape", "F2" }, --JS event code, https://www.toptal.com/developers/keycode
	inventory = "F2",
	glovebox = "G",
	trunk = "G",
	hotbar = "TAB",
	getGround = {
		label = "H",
		key = 74 -- https://docs.fivem.net/docs/game-references/controls/
	}
}

config.openTrunkDistance = { -- is checked when the trunk key is pressed
	default = 1.5,           -- Default open distance
	models = {               -- if the vehicle is too big and you have difficulty opening the trunk, you can increase the distance by adding models here
		[`tug`] = 8.0
	}
}

config.jerryCan = {
	ammoKey = "ammo",
	item = "weapon_petrolcan",
	removeAmmoZero = false, -- if true, the item will be removed when the ammo is 0
	disableAmmoZero = true, -- if true, the item will not be used when the ammo is 0
	invSetAmmoData = true, -- If true, it sets Jerry Can's data into an inventory
}
config.jerryCan.metadata = { [config.jerryCan.ammoKey] = 10000 }

-- Additions to this config will activate rare on items.
-- Add the key name as rareName="weaponPlus" to the item in your items.lua file
-- EXAMPLE:     stungun_ammo = { rareName="weaponPlus", name = 'stungun_ammo', label = 'Stungun ammo', weight = 200, type = 'item', image = 'stungun_ammo.webp', unique = false, useable = true, shouldClose = true, description = 'Ammo for Stungun' },
config.rare = {
	weaponPlus = {
		color = { r = 255, g = 235, b = 59 },
		label = "Plus Weapon"
	},
	weaponPolice = {
		color = { r = 40, g = 217, b = 241 },
		label = "Police Weapon"
	},
	weaponPoliceAmmo = {
		color = { r = 40, g = 217, b = 241 },
		label = "Police Ammo"
	}
}

-- the buttons at the top when you open the inventory.
config.topHeaderIcons = {
	{
		icon = "qrcode",             -- fontawasome icon name (https://fontawesome.com/icons)
		click = "headerClickMainFunction", -- u can edit this function from topHeader.lua
		style = {                    -- css style
			color = "#ffffff7f"      -- icon color
		}
	},
	{
		icon = "pen-ruler",           -- fontawasome icon name (https://fontawesome.com/icons))
		click = "headerClickCraftFunction", -- u can edit this function from topHeader.lua
		style = {                     -- css style
			color = "var(--green)"    -- icon color
		}
	},
	{
		icon = "cart-shopping",   -- fontawasome icon name (https://fontawesome.com/icons)
		webpage = "https://tgiann.com", -- u can edit this function from topHeader.lua
		style = {                 -- css style
			color = "#fce93dd9"   -- icon color
		}
	},
	--[[
	{ -- for tgiann-coinshop https://tgiann.tebex.io/package/6001460
		icon = "shop", -- fontawasome icon name (https://fontawesome.com/icons)
		click = "headerClickShopFunction", -- u can edit this function from topHeader.lua
		style = { -- css style
			color = "#ffffff7f" -- icon color
		}
	},
	]]
}

config.dropWhenDie = {
	weapons = true,    -- when you die, the gun in your hand falls to the ground
	money = true,      -- when you die, your money falls to the ground

	dropMinMoney = 100, -- if the player's money is above this value, it drop to the ground
	dropMaxMoney = 25000, -- if the player's money is above this value, the max drops by this value

	distance = {
		propRender = 50,
		drawTextDist = 8,
		pressDist = 1.8
	},
}

config.slotsMaxWeights = {
	player = {
		slots = 55,
		maxWeight = 100000
	},
	drop = {
		slots = 20,
		maxWeight = 1000000
	},
	default = { -- These values will be active if maxweight and slots data is not sent in the stash event
		slots = 100,
		maxWeight = 1000000
	},
	trunk = { -- These values will be active if maxweight and slots data is not sent in the trunk event
		slots = 5,
		maxWeight = 10000
	},
	glovebox = { -- These values will be active if maxweight and slots data is not sent in the glovebox event
		slots = 1,
		maxWeight = 4000
	}
}

config.vehicleClassSlotsMaxWeights = {
	[0] = { slots = 10, maxWeight = 50000 }, -- Compacts
	[1] = { slots = 10, maxWeight = 100000 }, -- Sedans
	[2] = { slots = 10, maxWeight = 75000 }, -- SUVs
	[3] = { slots = 10, maxWeight = 30000 }, -- Coupes
	[4] = { slots = 10, maxWeight = 30000 }, -- Muscle
	[5] = { slots = 5, maxWeight = 10000 }, -- Sports Classics
	[6] = { slots = 5, maxWeight = 25000 }, -- Sports
	[7] = { slots = 5, maxWeight = 5000 },  -- Super
	[8] = { slots = 1, maxWeight = 2000 },  -- Motorcycles
	[9] = { slots = 10, maxWeight = 75000 }, -- Off-road
	[10] = { slots = 5, maxWeight = 10000 }, -- Industrial
	[11] = { slots = 5, maxWeight = 10000 }, -- Utility
	[12] = { slots = 25, maxWeight = 500000 }, -- Vans
	[13] = { slots = 1, maxWeight = 2000 }, -- Cycles
	[14] = { slots = 5, maxWeight = 10000 }, -- Boats
	[15] = { slots = 5, maxWeight = 10000 }, -- Helicopters
	[16] = { slots = 5, maxWeight = 10000 }, -- Planes
	[17] = { slots = 5, maxWeight = 10000 }, -- Service
	[18] = { slots = 5, maxWeight = 10000 }, -- Emergency
	[19] = { slots = 5, maxWeight = 10000 }, -- Military
	[20] = { slots = 40, maxWeight = 800000 }, -- Commercial
	[21] = { slots = 5, maxWeight = 10000 }, -- Trains
	[22] = { slots = 5, maxWeight = 10000 }, -- Open Wheel
}

config.vehicleModelSlotsMaxWeights = {
	[`bcat`] = { slots = 200, maxWeight = 10000000 }
}

-- backpack command settings "(/backpack)"
config.backpack = {
	{ -- Default (Level 1)
		weight = config.slotsMaxWeights.player.maxWeight,
		slots = config.slotsMaxWeights.player.slots,
	},
	{ -- Level 2
		weight = config.slotsMaxWeights.player.maxWeight + 50000,
		slots = config.slotsMaxWeights.player.slots + 30,
	},
	{ -- Level 3
		weight = config.slotsMaxWeights.player.maxWeight + 100000,
		slots = config.slotsMaxWeights.player.slots + 55,
	}
}

config.BackEngineVehicles = {
	[`ninef`] = 4,
	[`adder`] = 4,
	[`vagner`] = 5,
	[`t20`] = 5,
	[`infernus`] = 4,
	[`zentorno`] = 4,
	[`reaper`] = 4,
	[`comet2`] = 4,
	[`comet3`] = 5,
	[`jester`] = 4,
	[`jester2`] = 4,
	[`cheetah`] = 5,
	[`cheetah2`] = 5,
	[`prototipo`] = 5,
	[`turismor`] = 5,
	[`pfister811`] = 5,
	[`ardent`] = 5,
	[`nero`] = 4,
	[`nero2`] = 4,
	[`tempesta`] = 5,
	[`vacca`] = 4,
	[`bullet`] = 4,
	[`osiris`] = 5,
	[`entityxf`] = 4,
	[`turismo2`] = 5,
	[`fmj`] = 4,
	[`re7b`] = 4,
	[`tyrus`] = 5,
	[`italigtb`] = 4,
	[`penetrator`] = 4,
	[`monroe`] = 4,
	[`ninef2`] = 4,
	[`stingergt`] = 5,
	[`gp1`] = 5,
	[`autarch`] = 5,
	[`tyrant`] = 4
}

config.langs = {}             -- don't change
config.strengthDivision = 100 -- for my server :(
