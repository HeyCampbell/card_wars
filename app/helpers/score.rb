def score()
  war_booty = []
  card1 = Card.find(session[:player_hand][0])
  card2 = Card.find(session[:computer_hand][0])


  if card1.value > card2.value
    winner = session[:player_hand]
    winner << session[:computer_hand].shift
  elsif card1.value < card2.value
    winner = session[:computer_hand]
    winner << session[:player_hand].shift
  elsif card1.value == card2.value
    war_booty << session[:player_hand].shift(3)
    war_booty << session[:computer_hand].shift(3)
    score()
  end
  winner << war_booty
  winner.flatten.rotate!
end

# def winner?
#   if session[:hand1].length == 0
#     session[:winner] = session[:player2]
#   elsif session[:hand2].length == 0
#     session[:winner] = session[:player1]
#   end
# end

