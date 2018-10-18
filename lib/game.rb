class Game

  attr_reader :player_1, :player_2, :current_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = @player_1
    @not_current_player = @player_2
  end

  def attack(player)
    player.receive_damage
  end

  def switch_players
    @current_player = @player_2 if @current_player == @player_1
    attack(@player_1) if @current_player == @player_2
    @current_player = @player_1 if @current_player == @player_2
    attack(@player_2) if @current_player == @player_1
  end

end
