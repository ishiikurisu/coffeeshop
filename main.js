const {app} = require('electron');
const {BrowserWindow} = require('electron');

var mainWindow = null;

app.on('ready', function() {
    mainWindow = new BrowserWindow({
        width: 600,
        height: 400,
        frame: true
    });
    mainWindow.loadURL('file://' + __dirname + '/index.html');
    mainWindow.on('closed', function() {
        mainWindow = null;
    });
});

// To build this, run `npm run build` on terminal
