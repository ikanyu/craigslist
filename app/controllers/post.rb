get '/post/all' do
  @posts = Post.all

  erb :"post/index"
end


get '/post/new' do
  @post = Post.new
  @categories = Category.all

  erb :"post/new"
end


post '/post/create' do
  @post = Post.create(title: params["title"], description: params['description'], category_id: params['category_id'], email: params['email'], price: params['price'])

  erb :"post/show"
end

get '/post/show/:id' do
  @post = Post.find(params[:id])

  erb :"post/show"
end

get '/post/show/:id/edit' do
  @post = Post.find(params[:id])
  @categories = Category.all

  erb :"post/edit"
end

post '/post/update' do
  @post = Post.update(id: params["id"], title: params["title"], description: params['description'], category_id: params['category_id'], email: params['email'], price: params['price'])

  erb :"post/show"
end