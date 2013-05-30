'use strict'

base = 'peer.pseudo'

config =
  coffee:
    options:
      sourceMap: true
    files: {}
  uglify:
    options:
      banner: '/*! <%= pkg.name %>/<%= pkg.version %> (<%= grunt.template.today("yyyy-mm-dd") %>) - <%= pkg.homepage %> */\n'
      sourceMap:    "#{base}.min.js.map"
      sourceMapIn:  "#{base}.js.map"
    files: {}

config.coffee.files["#{base}.js"] = "#{base}.coffee"
config.uglify.files["#{base}.min.js"] = "#{base}.coffee"

module.exports = (G) ->
  config.pkg = G.file.readJSON 'package.json'
  G.initConfig config

  G.loadNpmTasks 'grunt-contrib-coffee'
  G.loadNpmTasks 'grunt-contrib-uglify'

  G.registerTask 'default', [
    'coffee'
    'uglify'
  ]
