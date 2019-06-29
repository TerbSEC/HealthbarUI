ui_page "html/ui.html"

files {
    'html/fonts/gta-ui.ttf',
    "html/ui.html",
    "html/ui.css",
    "html/ui.js"
}

client_script {
    'client/client.lua',
    'config.lua',
}

server_script {
    '@vrp/lib/utils.lua',
    'server/server.lua'
}
