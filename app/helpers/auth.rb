def current_user
  if session[:user_id]
    return User.find(session[:user_id])
  else
    return nil
  end
end



def compare_cards(card1, card2)
  if card1.value < card2.value
    card1
  else
    card2
  end
end

# remove cards method
# add cards method
