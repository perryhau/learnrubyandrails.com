require 'imgkit'
require 'mini_magick'
require 'yaml'
require 'json'

IMGKit.configure do |config|
  config.wkhtmltoimage = './bin/wkhtmltoimage-osx'
  config.default_options = {
    :quality => 60,
    'load-error-handling' => 'ignore'
  }
  config.default_format = :png
end

resources = YAML.load_file('resources.yml')
resources.each do |resource|
  file_name = resource["name"].gsub(' ', '-').downcase
  file_path = "./tmp/snapshot-#{file_name}.png"
  IMGKit.new(resource["url"]).to_file(file_path)
  image = MiniMagick::Image.open(file_path)
  image.crop '1024x1024+0+0'
  image.resize '200x200'
  image.write "./public/images/snapshots/#{file_name}.png"
end

