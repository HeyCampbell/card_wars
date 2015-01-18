get '/login' do
  erb :'auth/login'
end

post '/login' do
  # p session
  # p "*************************"
  player = Player.find_by(name: params[:player][:name])

  if player.try(:authenticate, params[:player][:password])
    session[:player_id] = player.id
    redirect '/game'
  else
    add_error!("Wrong login information.")
    redirect '/login'

  end


  #   else

  #     # redirect '/login'
  #   end
  #   redirect '/game'
  # end
  # redirect '/signup'
end

get '/signup' do
  erb :'auth/signup'
end

post '/signup' do
  @player = Player.new(params[:player])
  if @player.save
    session[:player_id] = @player.id
    redirect "/"
  else
    redirect "/signup"
  end
end

post '/logout' do
  session.clear
  redirect :'/'
end
