{app} = require 'electron'
{BrowserWindow} = require 'electron'
Lib = require './lib'

mainWindow = null
lib = null
app.on 'ready', () ->
    mainWindow = new BrowserWindow {
        width: 600
        height: 400
        frame: true
    }
    console.log "what?"
    mainWindow.loadURL "file://#{__dirname}/index.html"
    mainWindow.on 'closed', () ->
        mainWindow = null
    contents = mainWindow.webContents
    console.log contents
