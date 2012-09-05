require 'bundler'
Bundler.setup :default
require 'sinatra'
require 'json'

get '/' do
  haml :index, layout: true
end

get '/data' do
  [{a:1, b:2}, {a:2, b:3}].to_json
end
