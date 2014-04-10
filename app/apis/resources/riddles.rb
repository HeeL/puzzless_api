class Puzzless::Resources::Riddles < Grape::API
  version 'v1', using: :header, vendor: 'puzzless'
  format :json

  resource :riddles do
    desc "Return a list of riddles from specified category"
    params do
      requires :category_id, type: Integer, desc: "Category id"
    end
    get :list do
      category_id = params[:category_id]
      [{title: 'Riddles from one category'}]
    end

    desc "Return a riddle"
    params do
      requires :id, type: Integer, desc: "Riddle id"
    end
    get :show do
      id = params[:id]
      [{title: 'An old good riddle'}]
    end
  end

end
