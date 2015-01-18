<<<<<<< HEAD
get '/' do
 # p session[:errors]
  erb :index
end

=======
get '/game' do
  unless current_user
    redirect '/login'
  end
  p session
  unless session[:game]
    hands = Card.deal
    session[:player_hand] = hands.first
    session[:computer_hand] = hands.last
  end
  @player_card = Card.find(session[:player_hand].first)
  @computer_card = Card.find(session[:computer_hand].first)
  @player = current_user
  erb :'game/show'
end

get '/game/new' do
  id = session[:player_id]
  session.clear
>>>>>>> e35dfe3692f198e52f825f7fac132cbcb0c9a33a

#Player auth




<<<<<<< HEAD



post '/signout' do
  session[:player1] = nil
  session[:player2] = nil
  redirect ("/")
end
=======
post '/game' do
  score
  if winner?
    redirect '/game/victory'
  end
  redirect '/game'
end

>>>>>>> e35dfe3692f198e52f825f7fac132cbcb0c9a33a
