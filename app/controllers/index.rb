get '/' do
  redirect '/sessions/new'
end

get '/sessions/new' do
  erb :'index'
end

post '/sessions' do
  # authenticate user
  # session.clear if session[:user_id]

  if @user = User.authenticate(params[:user][:username], params[:user][:password])
    session[:user_id] = @user.id
    # go to page that displays their reviews.
    redirect '/reviews'
  else
    @error = "Invalid email or password"
    erb :'index'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end


