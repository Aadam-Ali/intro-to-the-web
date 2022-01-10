require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  'Hello!'
end

get '/secret' do
  'This is a secret!'
end

get '/goodbye' do
  'Goodbye!'
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/form' do
  erb(:form)
end
