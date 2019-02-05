express = require "express"
app = express()

app.get '/', (req, res) ->
  res.send 'hello world!'


app.listen process.env.PORT || 3000, -> 
  console.log 'App listening on port 3000!'
