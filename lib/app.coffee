express = require "express"
assets = require "connect-assets"

# Express Config
app = express()
app.use express.static(process.cwd() + '/public')
app.use assets()

app.set 'view engine', 'jade'

# Little bit of a hack to make sure our libs are "assetized"
js lib for lib in ["lib/reveal", "lib/classList", "lib/highlight"]

app.get "/", (req, resp) ->
    resp.render "index"

port = process.env.VMC_APP_PORT or 3000

app.listen port, -> console.log "Listening... [#{ port }]"