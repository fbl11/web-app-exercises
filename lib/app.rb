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
end

get '/cat' do
  "<img src='http://bit.ly/1eze8aE' style='border: 3px dashed red'>"
end
