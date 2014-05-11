require 'grape'
require 'grape/rabl'
require 'grape/kaminari'
require 'rack/contrib/jsonp'

module Puzzless end
module Puzzless::Resources end

ROOT_PATH = File.expand_path(File.dirname(__FILE__))

class Puzzless::API < Grape::API
  use Rack::JSONP

  use Rack::Config do |env|
    env['api.tilt.root'] = File.join(ROOT_PATH, 'app', 'views')
  end
end

Dir[
  'db/init.rb',
  'app/apis/resources/*.rb',
  'app/models/*.rb',
  'app/apis/api.rb'
].each{|f| require_relative f}
