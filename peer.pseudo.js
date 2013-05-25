// Generated by CoffeeScript 1.6.2
(function() {
  var Peer,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  Peer = (function(_super) {
    __extends(Peer, _super);

    Peer.defaults = {
      key: null,
      host: 'cloud.plong.me',
      port: 443,
      debug: false
    };

    function Peer(id, options) {
      this.id = id;
      this.options = options != null ? options : this.id;
      if (typeof this.id === 'object') {
        this.id = null;
      }
      this.options = _.extend(this.defaults, this.options);
      this.connections = {};
      this.disconnected = true;
      this.destroyed = false;
    }

    Peer.prototype.connect = function(id, options) {
      if (options == null) {
        options = {};
      }
    };

    Peer.prototype.destroy = function() {};

    Peer.prototype.disconnect = function() {};

    return Peer;

  })(EventEmitter);

}).call(this);