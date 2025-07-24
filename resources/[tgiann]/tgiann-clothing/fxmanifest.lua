fx_version 'cerulean'
game 'gta5'
lua54 'yes'
version '1.5.7'

dependencies {
	'tgiann-core',
	'PolyZone', --https://github.com/mkafrin/PolyZone
}

ui_page 'ui/build/index.html'

files {
	'ui/animationIcon/**.*',
	'ui/build/**.*',
}

escrow_ignore {
	"client/editable.lua",
	"configs/**/*.lua",
	"languages/*.lua",
	"server/editable.lua",
}

client_scripts {
	'@PolyZone/client.lua',
	"configs/config.lua",
	"configs/clothingRoomsOutfits.lua",
	"configs/blacklist/*.lua",
	"configs/tattoo/*.lua",
	"configs/clotheList/**/*.lua",
	"configs/clothingPrice/*.lua",
	"configs/hairOverlays.lua",
	"configs/pedList.lua",
	"languages/*.lua",
	"client/*.lua",
	"shared/*.lua"
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	"configs/config.lua",
	"configs/tattoo/*.lua",
	"configs/webhooks.lua",
	"languages/*.lua",
	"server/main.lua",
	"server/tattoo.lua",
	"server/editable.lua",
	"server/playerOwnable.lua",
	"shared/*.lua"
}

file('tattooList.json')

dependency '/assetpacks'