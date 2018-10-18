require 'sinatra'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
enable :sessions

get '/' do
  erb(:index)
end

post '/names' do
  $player_1 = Player.new(params[:player_1])
  $player_2 = Player.new(params[:player_2])
  redirect '/play'
end

get '/play' do
  @player_1 = $player_1.name
  @player_2 = $player_2.name
  erb(:play)
end

get '/hit_play' do
  @player_1 = $player_1.name
  @player_2 = $player_2.name
  Game.new.attack($player_2)
  erb(:hit_play)
end

end
