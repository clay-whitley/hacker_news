get '/users/:id' do
  @user = User.find(params[:id])
  erb :user_profile
end

get '/users/:id/posts' do
  user = User.find(params[:id])
  @posts = user.posts
  erb :user_posts
end

get '/users/:id/comments' do
  user = User.find(params[:id])
  @comments = user.comments
  erb :user_comments
end