get '/reviews' do
  # @user = User.find(session[:user_id])
  @reviews = Review.all
  erb :"review"
end

get '/reviews/new' do
  erb :"new_review"
end

post '/reviews' do
  @user = User.find(session[:user_id])
  @city = City.create(name: params[:city][:name], state: params[:city][:state])
  @restaurant = Restaurant.create(name: params[:restaurant][:name], city: @city)
  @review = Review.create(user: @user, date: Time.now, restaurant: @restaurant, rating: params[:review][:rating], content: params[:review][:content])
  redirect '/reviews'
end

get '/users/:user_id/reviews' do
  @user = User.find(session[:user_id])
  erb :'user_reviews'
end

get '/users/:user_id/reviews/:review_id/edit' do
  @user = User.find(session[:user_id])
  @review = Review.find(params[:review_id])
  "Edit review"
end
