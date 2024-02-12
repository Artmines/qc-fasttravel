fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'

author 'Pablo Enterprises'
description 'qc-fasttravel'

client_scripts {
    'client/client.lua',
}

server_scripts {
    'server/server.lua',
}

shared_scripts {
    'config.lua',
    '@rsg-core/shared/locale.lua',
    'locales/en.lua', -- Change this to your preferred language
}

dependencies {
    'rsg-core',
    'redemrp_menu_base',
}

lua54 'yes'
