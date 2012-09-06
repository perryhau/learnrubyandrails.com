require 'bundler'
Bundler.setup :default
require 'sinatra'
require 'json'
require 'yaml'

configure :production do
  require 'newrelic_rpm'
end

get '/' do
  haml :index, layout: true
end

get '/data' do
  YAML.load_file('resources.yml').to_json
end
