fx_version 'cerulean'
games { 'gta5' }

author 'TinoKi'
description 'Meth'

client_scripts {
	'@es_extended/locale.lua',
	'client.lua',
	'config.lua',
}

server_scripts {
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',
	'server.lua',
	'config.lua',
}