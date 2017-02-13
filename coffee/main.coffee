{app} = require 'electron'
{BrowserWindow} = require 'electron'

mainWindow = null
app.on 'ready', () ->
    mainWindow = new BrowserWindow {
        width: 600
        height: 400
        frame: true
    }
    mainWindow.loadURL "file://#{__dirname}/index.html"
    mainWindow.on 'closed', () ->
        mainWindow = null
