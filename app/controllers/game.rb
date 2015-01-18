get '/game' do
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

post '/game' do
  score
  if session[:winner]
    redirect '/victory'
  end
  redirect '/game'
end

