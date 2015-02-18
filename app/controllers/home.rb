get '/home' do
  @posts = Post.all
  erb :home
end