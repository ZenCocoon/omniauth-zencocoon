require 'rubygems'
require 'bundler'

Bundler.setup :default, :development, :example
require 'sinatra'
require 'omniauth'
require 'omniauth-zencocoon'

use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :zencocoon, ENV['ZENCOCOON_KEY'], ENV['ZENCOCOON_SECRET']
end

get '/' do
  <<-HTML
<ul>
<li><a href='/auth/zencocoon'>Sign in with ZenCocoon</a></li>
</ul>
HTML
end

get '/auth/:provider/callback' do
  content_type 'text/plain'
  request.env['omniauth.auth'].info.to_hash.inspect
end