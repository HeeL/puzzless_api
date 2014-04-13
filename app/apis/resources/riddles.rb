class Puzzless::Resources::Riddles < Grape::API
  resource :riddles do
    desc "Return a list of riddles from specified category"
    params do
      requires :category_id, type: Integer, desc: "Category id"
    end
    get 'list/:category_id', rabl: 'riddles/list' do
      @riddles = Riddle.where(category_id: params[:category_id])
      [{title: 'Riddles from one category'}]
    end

    desc "Return a riddle"
    params do
      requires :id, type: Integer, desc: "Riddle id"
    end
    get 'show/:id', rabl: 'riddles/show' do
      @riddle = Riddle.find(params[:id])
      [{title: 'An old good riddle'}]
    end
  end
end
