get '/login' do 
  erb :login_form
end

post '/users' do
  user = User.new(username: params[:username])
  user.password = params[:password]
  user.save
  session[:user_id] = user.id
  redirect '/'
end

post '/login' do
  user = User.authenticate(params[:username], params[:password])
  if user
    session[:user_id] = user.id
  end
  redirect '/'
  
end