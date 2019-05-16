class Player

  attr_reader :name, :hits

  STARTING_HITS = 100

  def initialize(name)
    @name = name
    @hits = STARTING_HITS
  end

  def receive_attack
    @hits -= 10
  end
end
