get '/game' do
  unless session[:game]
    Card.deal
  end


  @player = current_user
  erb :'game/show'
end

post '/game' do

  redirect '/game'
end

