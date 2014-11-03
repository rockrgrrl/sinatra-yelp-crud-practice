

get "/users/new" do
  erb :"new_user"
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/reviews'
  else
    @error = "username or password invalid"
    erb :"new_user"
  end
end

