require 'active_record'
require 'yaml'
require 'logger'

ActiveRecord::Base.establish_connection(YAML::load(File.open('config/database.yml')))
ActiveRecord::Base.logger = Logger.new(STDERR) 
