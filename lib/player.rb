class Player

  attr_reader :name, :hit_points
  DEFAULT_HIT_REDUCTION = 10
  DEFAULT_HIT_POINTS = 100

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def attack(name)
    name.receive_damage
  end

  def receive_damage
    @hit_points -= DEFAULT_HIT_REDUCTION
  end

end
