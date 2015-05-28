require "rubygems"
require "geminabox"

if ENV["BASIC_AUTH_USER"] && ENV["BASIC_AUTH_PASSWORD"]
  use Rack::Auth::Basic, "Protected Area" do |username, password|
    username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
  end
end

Geminabox.data = "/var/www/gemserver/shared/data"
run Geminabox::Server
