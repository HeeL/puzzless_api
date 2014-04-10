class Puzzless::Resources::Categories < Grape::API
  version 'v1', using: :header, vendor: 'puzzless'
  format :json

  resource :categories do
    desc "Return a list of categories"
    get :list do
      [{title: 'Logic'}, {title: 'Mathematic'}]
    end
  end
end