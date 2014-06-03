class Puzzless::Resources::Riddles < Grape::API
  include Grape::Kaminari
  paginate per_page: 50, max_per_page: 70

  resource :riddles do
    desc "Return a list of riddles from specified category"
    params do
      requires :category_id, type: Integer, desc: "Category id"
    end
    get 'list/:category_id', rabl: 'riddles/list' do
      @riddles = paginate(Riddle.where(category_id: params[:category_id]))
    end

    desc "Return a riddle"
    params do
      requires :id, type: Integer, desc: "Riddle id"
    end
    get 'show/:id', rabl: 'riddles/show' do
      @riddle = Riddle.find(params[:id])
    end
  end
end
