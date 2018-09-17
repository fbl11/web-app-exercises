require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'hello'
end

get '/secret' do
  'This is a secret'
end

get '/random-cat' do
  @cat_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @cat_name = params[:name]
  erb(:index)
end
