class Puzzless::Resources::Comments < Grape::API
  resource :comments do
    desc "Return a list of comments to specified riddle"
    params do
      requires :riddle_id, type: Integer, desc: "Riddle id"
    end
    get 'list/:riddle_id', rabl: 'comments/list' do
      @comments = Comment.where(riddle_id: params[:riddle_id])
    end
  end
end
