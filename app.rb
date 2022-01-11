require "sinatra"
require "sinatra/reloader" if development?

get '/addition' do
  erb(:addition_form)
end

post '/result' do
  @name, @first, @second = params[:name], params[:first], params[:second]
  @result = @first + @second
  erb(:result)
end


# get '/' do
#   'Hello!'
# end

# get '/secret' do
#   'This is a secret!'
# end

# get '/goodbye' do
#   'Goodbye!'
# end

# get '/random-cat' do
#   @name = ["Amigo", "Misty", "Almond"].sample
#   erb(:index)
# end

# post '/named-cat' do
#   p params
#   @name = params[:name]
#   erb(:index)
# end

# get '/cat-form' do
#   erb(:cat_form)
# end
