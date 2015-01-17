def score(player_hand, )
  player_hand = args[:player_hand]

  computer_hand = args[:computer_hand]
  war_booty =[]
  winner = nil
   if player_hand.first.value > computer_hand.first.value
    player_hand.rotate!
    player_hand << computer_hand.shift(1)
    winner =player_hand
  elsif player_hand.first.value < computer_hand.first.value
    computer_hand.rotate!
    computer_hand << player_hand.shift(1)
    winner = computer_hand
  elsif card1.value == card2.value
    war_booty << player_cards.shift(3)
    war_booty << computer_hand.shift(3)
    score()
  end
  winner << war_booty
  winner.flatten.rotate!
  {player_hand: player_hand, computer_hand: computer_hand}
end
