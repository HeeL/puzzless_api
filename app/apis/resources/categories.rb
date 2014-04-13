class Puzzless::Resources::Categories < Grape::API
  resource :categories do
    desc "Return a list of categories"
    get :list, rabl: 'categories/list' do
      @categories = Category.all
      [{title: 'Logic'}, {title: 'Mathematic'}]
    end
  end
end