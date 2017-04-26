# Description:
#   This is a web router which will resond to certain requests
#
# Notes:
#   This will give provide an endpoint that can be pinged to keep the server alive.
#

module.exports = (robot) ->
  robot.router.get '/', (req, res) ->
    res.send 'You are at /'

  robot.router.get '/hubot', (req, res) ->
    res.send 'Hello I am Hubot.'

  robot.router.get '/hubot/ping', (req, res) ->
    res.send 'PONG'
