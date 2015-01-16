get '/' do

  erb :index
end

post '/signup' do
  p params[:player]
  @user = Player.create(params[:player])
  if session[:player1] == nil
    session[:player1] = @user.id
  elsif session[:player2] == nil
    session[:player2] = @user.id
  else
    redirect '/'
  end
  if session[:player2] == nil
    redirect '/'
  else
    redirect '/game'
  end
end

get '/clear_all' do
  session.clear
  redirect :'/'
end

get '/login' do
  erb :'auth/login'
end

get '/signup' do
  erb :'auth/signup'
end

post '/login' do
  p session
  @user = Player.find_by(name: params[:user][:name])

  if @user.try(:authenticate, params[:user][:password])
    if session[:player1] == nil
      session[:player1] = @user.id
    elsif session[:player2] == nil
      session[:player2] = @user.id
    else
      redirect '/'
    end
  else
    redirect '/'
  end
  if session[:player2] == nil
    redirect '/'
  else
    redirect '/game'
  end
  redirect '/game'
end

get '/game' do

  erb :'game/show'
end

post '/game' do

  redirect '/game'
end




