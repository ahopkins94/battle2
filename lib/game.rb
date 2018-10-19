class Game

  attr_reader :player_1, :player_2, :turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = player_1
  end

  def attack(player)
    non_active_player.receive_damage
  end

  def current_turn
    @turn
  end

  def non_active_player
    @turn == player_1 ? player_2 : player_1
  end

  def switch_turns
    @turn = non_active_player
  end

  def game_over?
    player_1.dead || player_2.dead
  end

  def winner
    if game_over? == true
      player_1.dead ? player_2 : player_1
    end
  end

end
