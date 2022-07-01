class Player
  attr_accessor :score
  attr_accessor :name

  def initialize (name)
    @score = 3
    @name = name
  end

  def subtract_score
    @score -= 1
  end
end