require 'dotenv'
require 'rack/rewrite'
require 'sinatra'
Dotenv.load

# 301 permanently redirect from: 
#   thisdomain.com/somewhere 
# to:
#   #{ENV['DOMAIN']}/somehere

use Rack::Rewrite do
  r301 %r{.*}, "#{ENV['DOMAIN']}$&", :if => Proc.new { |rack_env| rack_env['SERVER_NAME'] != ENV['DOMAIN'] } 
end

get '/' do
  "r301"
end
