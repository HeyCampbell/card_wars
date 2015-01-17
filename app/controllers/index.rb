get '/' do
 # p session[:errors]
  erb :index
end


#Player auth







post '/signout' do
  session[:player1] = nil
  session[:player2] = nil
  redirect ("/")
end


