get '/' do
 # p session[:errors]
  erb :index
end

<<<<<<< HEAD
post '/signup' do
  p params[:player]
  @user = Player.new(params[:player])
  if @user.save
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

  else
    add_error('player not valid')
    redirect '/'
  end

end
=======
>>>>>>> 36bb5ce74d985156ac36aaf59282405d8fb8a1b4

#Player auth




<<<<<<< HEAD
get '/game' do
  if request.xhr? # if I received an ajax request
    # return some data
  else # I didn't get an ajax request
    # do something unrelated to ajax (i.e., javascript was turned off or something)
  end

  unless session[:game]
    Card.deal
  end
  unless session[:winner]
  erb :'game/show'
  else
    erb :'game/winner'
  end
end
=======
>>>>>>> 36bb5ce74d985156ac36aaf59282405d8fb8a1b4



post '/signout' do
  session[:player1] = nil
  session[:player2] = nil
  redirect ("/")
end


