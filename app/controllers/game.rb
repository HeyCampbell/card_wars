get '/game' do
  unless session[:game]
    Card.deal
    @player = current_user
    erb :'game/show'
  end
end

post '/game' do

  redirect '/game'
end

