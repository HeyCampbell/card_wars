def current_user
  if session[:player_id]
    return Player.find(session[:player_id])
  else
    return nil
  end
end


