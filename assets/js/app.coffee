((io) ->
  log = ->
    console.log.apply console, arguments_  if typeof console isnt "undefined"
  socket = io.connect()
  log "Connecting to Sails.js..."  if typeof console isnt "undefined"
  socket.on "connect", socketConnected = ->
    socket.on "message", messageReceived = (message) ->
      log "New comet message received :: ", message

    log "Socket is now connected and globally accessible as `socket`.\n" + "e.g. to send a GET request to Sails, try \n" + "`socket.get(\"/\", function (response) " + "{ console.log(response); })`"

  window.socket = socket
) window.io
