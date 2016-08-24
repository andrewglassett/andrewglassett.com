axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
dynamic_content = require 'dynamic-content'
grate        = require 'grate'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore']
  extensions: [dynamic_content()]
  stylus:
    use: [axis(), rupture(), autoprefixer(), grate()]
  server:
    clean_urls: true
