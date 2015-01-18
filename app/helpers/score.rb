def score(card1_id = session[:player_hand][0], card2_id = session[:computer_hand][0])
  war_booty = []
  card1 = Card.find(card1_id)
  card2 = Card.find(card2_id)
  if card1.value > card2.value
    session[:player_hand] << session[:computer_hand].shift
    session[:player_hand] << war_booty
    session[:player_hand].flatten!.rotate!
    session[:computer_hand].rotate!
  elsif card1.value < card2.value
    session[:computer_hand] << session[:player_hand].shift
    session[:computer_hand] << war_booty
    session[:computer_hand].flatten!.rotate!
    session[:player_hand].rotate!
  elsif card1.value == card2.value
    war_booty << session[:player_hand].shift(3)
    war_booty << session[:computer_hand].shift(3)
    score()
  end
end

# def winner?
#   if session[:hand1].length == 0
#     session[:winner] = session[:player2]
#   elsif session[:hand2].length == 0
#     session[:winner] = session[:player1]
#   end
# end

# def score(player_hand, )
#   player_hand = args[:player_hand]

#   computer_hand = args[:computer_hand]
#   war_booty =[]
#   winner = nil
#    if player_hand.first.value > computer_hand.first.value
#     player_hand.rotate!
#     player_hand << computer_hand.shift(1)
#     winner =player_hand
#   elsif player_hand.first.value < computer_hand.first.value
#     computer_hand.rotate!
#     computer_hand << player_hand.shift(1)
#     winner = computer_hand
#   elsif card1.value == card2.value
#     war_booty << player_cards.shift(3)
#     war_booty << computer_hand.shift(3)
#     score()
#   end
#   winner << war_booty
#   winner.flatten.rotate!
#   {player_hand: player_hand, computer_hand: computer_hand}
# end
