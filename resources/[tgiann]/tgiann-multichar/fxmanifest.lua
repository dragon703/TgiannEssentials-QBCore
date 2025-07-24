fx_version "cerulean"
game "gta5"
lua54 "yes"
version "1.3.1"

dependencies {
	"tgiann-core",
}

ui_page "ui/build/index.html"

files {
	"ui/assets/**.*",
	"ui/build/**.*",
}

escrow_ignore {
	"client/editable.lua",
	"configs/*.lua",
	"languages/*.lua",
	"server/editable.lua",
	"server/webhooks.lua",
	"server/commands.lua",
	"server/qsHousing.lua"
}

shared_scripts {
	"@qb-apartments/config.lua", -- if you are using esx delete this line
	"configs/*.lua",
	"languages/*.lua",
}

client_scripts {
	"client/*.lua",
}

server_scripts {
	"@oxmysql/lib/MySQL.lua",
	"server/*.lua",
}

dependency '/assetpacks'