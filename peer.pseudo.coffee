class Peer extends EventEmitter
  @defaults =
    key: null
    host: 'cloud.plong.me'
    port: 443
    debug: false
  
  
  constructor: (@id, @options = @id) ->
    if typeof @id == 'object'
      @id = null
    @options = _.extend @defaults, @options
    
    @connections = {}
    @disconnected = true
    @destroyed = false
  
  
  connect: (id, options = {}) ->
  destroy: ->
  disconnect: ->
  