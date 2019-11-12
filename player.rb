class Player
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def decrease_score
    self.lives = self.lives - 1
  end
   
  def alive?
    self.lives > 0
  end

  def score
   "#{self.name}: #{self.lives}/3"
  end
end