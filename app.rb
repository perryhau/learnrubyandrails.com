require 'bundler'
Bundler.setup :default
require 'sinatra'

get '/' do
  haml :index, layout: true
end
