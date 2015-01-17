# def score(card1 = Card.find(session[:hand1][0], card2 = Card.find(session[:hand2][0]))
#   war_booty = []
#   if card1.value > card2.value
#     winner = session[:hand1]
#     winner << session[:hand2].shift
#   elsif card1.value < card2.value
#     winner = session[:hand2]
#     winner << session[:hand1].shift
#   elsif card1.value == card2.value
#     war_booty << session[:hand1].shift(3)
#     war_booty << session[:hand2].shift(3)
#     score()
#   end
#   winner << war_booty
#   winner.flatten.rotate!
# end

# def winner?
#   if session[:hand1].length == 0
#     session[:winner] = session[:player2]
#   elsif session[:hand2].length == 0
#     session[:winner] = session[:player1]
#   end
# end

