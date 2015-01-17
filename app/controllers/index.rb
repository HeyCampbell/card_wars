get '/' do
 p session[:errors]
  erb :index
end

post '/signup' do
  p params[:player]
  @user = Player.create(params[:player])
  if session[:player1] == nil
    session[:player1] = @user.id
  elsif session[:player2] == nil
    session[:player2] = @user.id
  end
  if session[:player2] == nil
    redirect '/'
  else
    redirect '/game'
  end
end

get '/clear_all' do
  session.clear
  redirect '/'
end

get '/login' do
  erb :'auth/login'
end

get '/signup' do
  erb :'auth/signup'
end

post '/login' do
  if Player.find_by(name: params[:player][:name])
    @user = Player.find_by(name: params[:player][:name])
    if @user.try(:authenticate, params[:player][:password])
      if session[:player1] == nil
        session[:player1] = @user.id
      else session[:player2] == nil
        session[:player2] = @user.id
        redirect '/game'
      end
    else
      redirect '/login'
    end
    redirect '/signup'
  end
  redirect '/'
end

get '/game' do
  unless session[:game]
    Card.deal
  end
  victor_check
  unless session[:winner]
    erb :'game/show'
  else
    erb :'game/winner'
  end
end

post '/game' do
  score
  redirect '/game'
end

post '/signout' do

  session[:player1] = nil
  session[:player2] = nil
  redirect "/clear_all"
end


