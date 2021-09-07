require 'sinatra'
require "sinatra/reloader" if development?

Sinatra::Reloader

get '/' do
  "Hello World"
end

get '/secret' do
  "This is a secret. hey"
end 

get '/coding' do
  "This is coding."
end

get '/cat' do 
  erb(:index)
end 
