fx_version 'cerulean'
description 'AV IPLs'
author 'Avilchiis'
version '1.0.0'
lua54 'yes'
games {
'gta5'
}
ui_page 'ui/dist/index.html'

shared_scripts {
    "@ox_lib/init.lua",
    'config/*.lua',
    'interiors/**/*.lua',
}

server_scripts {
    'server/*.lua',
}

client_scripts {
    'client/*.lua',
}

files {
    'data/*.json',
    'ui/dist/index.html',
    'ui/dist/**/*',
}

dependencies {
    'ox_lib',
}
