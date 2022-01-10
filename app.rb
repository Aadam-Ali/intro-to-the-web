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
  '<img src="https://i.imgur.com/jFaSxym.png" style="border: dashed red">'
end