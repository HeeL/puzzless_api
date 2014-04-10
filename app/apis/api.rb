class Puzzless::API < Grape::API
  mount ::Puzzless::Resources::Categories
  mount ::Puzzless::Resources::Riddles
end
