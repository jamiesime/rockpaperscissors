require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'json'

require_relative 'models/game.rb'

gamerules = Game.new()

get '/' do
  erb( :welcome )
end

get '/rock' do
  @player_choice = 'rock'
  @selection = gamerules.select_random()
  @winner = gamerules.compare(@player_choice, @selection)
  erb ( :result )
end

get '/paper' do
  @player_choice = 'paper'
  @selection = gamerules.select_random()
  @winner = gamerules.compare(@player_choice, @selection)
  erb ( :result )
end

get '/scissors' do
  @player_choice = 'scissors'
  @selection = gamerules.select_random()
  @winner = gamerules.compare(@player_choice, @selection)
  erb ( :result )
end
