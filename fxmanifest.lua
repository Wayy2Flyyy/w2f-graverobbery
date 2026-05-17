fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'w2f-graverobbery'
author 'wayy2flyyy'
description 'W2F Framework - Grave robbery activity'
version '1.0.0'

ui_page 'nui/digging/index.html'

files {
    'nui/digging/index.html',
    'nui/digging/svg/*.svg',
}

shared_scripts {
    '@ox_lib/init.lua',
    'locales/locale.lua',
    'locales/en.lua',
    'config.lua',
}

client_scripts {
    '@qbx_core/modules/lib.lua',
    'client/main.lua',
}

server_scripts {
    'webhook_config.lua',
    'server/server.lua',
}

dependencies {
    'qbx_core',
    'ox_lib',
    'ox_inventory',
    'ox_target',
}
