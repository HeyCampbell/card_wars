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

get '/game/victory' do
  erb :'game/victory'
end


get '/game/new' do
  id = session[:player_id]
  session.clear
  session[:player_id] = id
  redirect '/game'
end

post '/game' do
  score
  if winner?
    redirect '/game/victory'
  end
  redirect '/game'
end

