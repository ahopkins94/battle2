require 'sinatra'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
enable :sessions

get '/' do
  erb(:index)
end

post '/names' do
  player_1 = Player.new(params[:player_1])
  player_2 = Player.new(params[:player_2])
  $game = Game.new(player_1, player_2)
  redirect '/play'
end

get '/play' do
  @game = $game
  erb(:play)
end

get '/hit_play' do
  @game = $game
  $game.attack($game.player_2)
  $game.switch_turns
  redirect '/game_over' if $game.game_over?
  erb(:hit_play)
end

get '/game_over' do
  erb(:game_over)
end

end
