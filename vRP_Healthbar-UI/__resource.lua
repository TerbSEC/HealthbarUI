ui_page "ui.html"

files {
    "ui.html",
    "ui.css",
    "ui.js"
}

client_script {
    'client.lua'
}

server_script {
    '@vrp/lib/utils.lua',
    'server.lua'
}