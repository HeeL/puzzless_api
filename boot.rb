require 'grape'

module Puzzless end
module Puzzless::Resources end

Dir['app/apis/resources/*.rb', 'app/apis/api.rb'].each do |f|
  require_relative f
end
