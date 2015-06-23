get '/category/all' do
  @categories = Category.all
  erb :"category/index"
end

get '/category/show/:name' do
  @posts = Category.find_by(name: params[:name]).posts

  @category = params[:name]

  erb :"category/show"
end