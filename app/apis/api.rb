class Puzzless::API < Grape::API
  
  version 'v1', using: :header, vendor: 'puzzless'
  format :json
  formatter :json, Grape::Formatter::Rabl

  mount ::Puzzless::Resources::Categories
  mount ::Puzzless::Resources::Riddles
end
