class Player

  attr_reader :name, :hits

  STARTING_HITS = 100

  def initialize(name)
    @name = name
    @hits = STARTING_HITS
  end

  def take_damage
    @hits -= 10
  end
end
