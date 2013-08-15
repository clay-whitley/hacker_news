get '/' do
  @posts = Post.all
  erb :index
end

get '/posts/new' do
  erb :new_post
end


get '/posts/:id' do 
  @post = Post.find(params[:id])
  @comments = @post.comments
  erb :view_post
end


post '/comments' do
  current_user.comments.create(params[:comment])
  redirect "/posts/#{params[:comment][:post_id]}"
end

post '/posts' do
  current_user.posts.create(params[:post])
  redirect '/'
end