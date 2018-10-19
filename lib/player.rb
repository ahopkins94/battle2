class Player

  attr_reader :name, :hit_points
  DEFAULT_HIT_POINTS = 100

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def receive_damage
    @hit_points -= Kernel.rand(10)
  end

  def dead
    @hit_points <= 0
  end

end
