get '/' do
  erb :index
end

post '/signup' do
  @user = User.create(params[:user])
  if session[:player1] == nil
    session[:player1] = @user.id
  elsif session[:player2] == nil
    session[:player2] = @user.id
  else
    redirect '/'
  end
  redirect '/game'
end


get '/login' do
  erb :login
end


post '/login' do
  @user = User.find_by(name: params[:user][:name])

  if @user.try(:authenticate, params[:user][:password])
    if session[:player1] == nil
      session[:player1] = @user.id
    elsif session[:player2] == nil
      session[:player2] = @user.id
    else
      redirect '/'
    end
  else
    redirect '/login'
  end
  redirect '/game'
end

get '/game' do

  erb :show
end
