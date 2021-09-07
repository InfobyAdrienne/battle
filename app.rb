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
    
  "<div style='border: dashed red'>
      <img src='https://i.imgur.com/jFaSxym.png'>
    </div>"
end 
