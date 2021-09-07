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

get '/random-cat' do
  @cat_name = ['Fluffy', 'Coco', 'Ginger', 'Snowball'].sample
  erb (:index)
end 

get '/named-cat' do
  p params
  @cat_name = params[:cat_name]
  erb (:index)
end 
