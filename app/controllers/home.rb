get '/home' do
  @user = User.find(session[:user_id])
  @posts = Post.all
  erb :home
end

get '/new' do
  erb :'fears/new_post'
end

post '/new' do
  erb :'fears/new_post'
  redirect '/home'
end