require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'hello'
end

get '/secret' do
  'This is a secret'
end

get '/shotgun' do
  'Now with shotgun'
  erb "Hi there, Visitor!"
end

get '/random-cat' do
  @cat_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  # p params
  @cat_name = params[:name]
  erb(:index)
end
