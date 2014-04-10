require 'grape'

module Puzzless end
module Puzzless::Resources end

Dir[
  'db/init.rb',
  'app/apis/resources/*.rb',
  'app/apis/api.rb'
].each{|f| require_relative f}
