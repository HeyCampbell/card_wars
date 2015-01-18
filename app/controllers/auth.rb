get '/login' do
  erb :'auth/login'
end

post '/login' do
  if Player.find_by(name: params[:player][:name])
    player = Player.find_by(name: params[:player][:name])
    if player.try(:authenticate, params[:player][:password])
      session[:player_id] = player.id
    else
      redirect '/login'
    end
    redirect '/'
  end
  redirect '/signup'
end

get '/signup' do
  erb :'auth/signup'
end

post '/signup' do
  @player = Player.create(params[:player])

  if @player.save
    session[:player_id] = @player.id
    redirect "/"
  else
    redirect "/"
  end
end

post '/logout' do
  session.clear
  redirect :'/'
end
