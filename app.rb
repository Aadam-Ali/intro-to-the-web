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

get '/cat' do
  erb(:index)
end