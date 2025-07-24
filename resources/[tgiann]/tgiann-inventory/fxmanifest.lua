fx_version "cerulean"
game "gta5"
lua54 "yes"
version '1.31.0'

dependencies {
	"/server:10488",
	"ox_lib",
	"tgiann-core",
	"clothes_images",
	"inventory_images",
	"/onesync",
}

ui_page "ui/build/index.html"

files {
	"ui/icon/**.*",
	"ui/build/**.*",
}

file("json/weapons.json")

escrow_ignore {
	"client/editable.lua",
	"client/topHeader.lua",
	"configs/*.lua",
	"languages/*.lua",
	"server/editable.lua",
	"server/webhooks.lua",
	"server/commands.lua",
	"server/convert.lua",
	"shared/type.lua",
	"items/*.lua"
}

shared_scripts {
	"@ox_lib/init.lua",
	"items/*.lua",
	"configs/config.lua",
	"languages/*.lua",
	"configs/configAmmo.lua",
	"configs/configAntiSwimingItems.lua",
	"configs/configAttachment.lua",
	"configs/configAttachmentName.lua",
	"configs/configBlockItems.lua",
	"configs/configCarryItems.lua",
	"configs/configClotheBackpack.lua",
	"configs/configCommands.lua",
	"configs/configCraft.lua",
	"configs/configDecayableItems.lua",
	"configs/configDumpsterSearch.lua",
	"configs/configDrop.lua",
	"configs/configEditableItems.lua",
	"configs/configFilter.lua",
	"configs/configItemStash.lua",
	"configs/configMaxUseAmount.lua",
	"configs/configRealisticArmor.lua",
	"configs/configShop.lua",
	"configs/configStashes.lua",
	"configs/configThrowableItems.lua",
	"configs/configVendingMachine.lua",
	"configs/configWeapon.lua",
	"configs/configMaxStack.lua",
	"configs/configMetadata.lua",
	"shared/shared.lua"
}

client_scripts {
	"shared/itemList.lua",
	"configs/configMetadataAdvance.js",
	"client/exports.lua",
	"client/dev.lua",
	"client/client.lua",
	"client/ammo.lua",
	"client/attachments.lua",
	"client/craft.lua",
	"client/dropWhenDie.lua",
	"client/playerRender.lua",
	"client/topHeader.lua",
	"client/useItem.lua",
	"client/metadata.lua",
	"client/editable.lua",
	"client/weapdraw.lua",
	"client/stungunAmmo.lua",
	"client/clothing.lua",
	"client/throwItem.lua",
	"client/drop.lua",
	"client/carryItems.lua",
	"client/realisticArmor.lua",
	"client/commands.lua",
	"client/vendingMachine.lua",
	"client/stashes.lua",
	"client/dumpsterSearch.lua",
}

server_scripts {
	"@oxmysql/lib/MySQL.lua",
	"shared/itemList.lua",
	"server/hooks.lua",
	"server/webhooks.lua",
	"server/server.lua",
	"server/commands.lua",
	"server/attachments.lua",
	"server/carryItems.lua",
	"server/dropWhenDie.lua",
	"server/craft.lua",
	"server/FWFunctions.lua",
	"server/utils.lua",
	"server/ammo.lua",
	"server/realisticArmor.lua",
	"server/editable.lua",
	"server/convert.lua",
	"server/control.lua",
	"server/clothe.lua",
	"server/vendingMachine.lua",
	"server/stashes.lua",
	"server/dumpsterSearch.lua",
	"server/bridge/*.lua"
}

dependency '/assetpacks'