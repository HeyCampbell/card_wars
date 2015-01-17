get '/' do
 # p session[:errors]
  erb :index
end


#Player auth







get '/signout' do
  session.clear
  redirect ("/")
end


