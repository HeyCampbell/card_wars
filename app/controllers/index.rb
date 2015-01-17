get '/' do
 # p session[:errors]
  erb :index
end

post '/signup' do
  p params[:player]
  @user = Player.new(params[:player])
  # if @user.save
  #   if session[:player1] == nil
  #     session[:player1] = @user.id
  #   elsif session[:player2] == nil
  #     session[:player2] = @user.id
  #   end

  #   if session[:player2] == nil
  #     redirect '/'
  #   else
  #     redirect '/game'
  #   end

  # else
  #   add_error('player not valid')
  #   redirect '/'
  # end

  if @user.save
    session[:player_id] = player.id
    redirect "/"
  else
    redirect "/signup"
  end

end


post '/signout' do
  session[:player1] = nil
  session[:player2] = nil
  redirect ("/")
end




