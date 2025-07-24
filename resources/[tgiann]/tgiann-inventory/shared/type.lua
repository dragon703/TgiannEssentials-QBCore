---@alias InvType "glovebox" | "trunk" | "stash" | "player" | "playerrealisticarmor" | "playerclothe" | "otherplayer" | "shop" | "drop" | "crafting"
---@alias InvId number|string playerid, name, plate

---@alias ItemInfo table<string, any>

---@alias ItemName string

---@class InvDataParam
---@field maxweight? number
---@field maxWeight? number
---@field slots? number
---@field whitelist? ItemName[]
---@field blacklist? ItemName[]
---@field maxAmount? table<ItemName, number>[] -- max item amount in stash
---@field label? string -- stash label
---@field coords? vector3 -- drop coords
---@field bucket? number -- drop bucket

---@class InvOpenType
---@field isPlayer? boolean -- if true, stash is opened by player
---@field password? string -- stash password
---@field showClothe? boolean

---@class ItemData
---@field type "weapon" | "item"
---@field name string
---@field slot number
---@field amount number
---@field info ItemInfo

--- Configs Realistic Armor ---

---@class ConfigRealisticArmor
---@field active boolean -- If set to `true`, this system will be activated.
---@field checkClothe boolean -- If true, if the player has no armor value and is wearing armor as an outfit, it will remove this outfit
---@field armorPlateItems ConfigArmorPlateItems[] -- List of armor plate items
---@field armorItems ConfigArmorItems[] -- List of armor items

---@class ConfigRealisticArmorProgressbar
---@field active boolean -- If set to `true`, a progress bar will be displayed when the player equips armor.
---@field label string -- u can change from language file
---@field time number -- Progress bar time
---@field anims { animDict: string, anim: string, flags: number } -- Animation dictionary and animation name
---@field disables { disableMovement: boolean, disableCarMovement: boolean, disableMouse: boolean, disableCombat: boolean } -- Disables during progressbar

---@class ConfigArmorPlateItems
---@field itemName string -- Item name
---@field addArmor number -- The armor value that will be added when the player equips armor plate.
---@field progressbar ConfigRealisticArmorProgressbar -- Progress bar configuration for equipping armor plate

---@class ConfigArmorItems
---@field itemName string -- Item name
---@field maxArmor number -- The armor value that will be added when the player equips armor.
---@field progressbar ConfigRealisticArmorProgressbar -- Progress bar configuration for equipping armor
---@field clothe? ConfigArmorItemsClothe -- Clothe configuration for armor items, if applicable

---@class ConfigArmorItemsClothe
---@field active boolean -- If set to `true`, this system will be activated.
---@field data ConfigArmorItemsClotheData

---@class ConfigArmorItemsClotheData
---@field jobs table<string, table<number | "other", ConfigArmorItemsClothePedData>> -- Jobs that can use armor as clothe
---@field other ConfigArmorItemsClothePedData

---@class ConfigArmorItemsClothePedData
---@field mp_m_freemode_01 { drawable: number, texture: number } -- MP Male Ped Hash
---@field mp_f_freemode_01 { drawable: number, texture: number } -- MP Female Ped Hash
