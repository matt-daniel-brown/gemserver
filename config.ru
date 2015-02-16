require "rubygems"
require "geminabox"

Geminabox.data = "/var/www/gemserver/shared/data"
run Geminabox::Server
