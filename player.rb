=begin 
  player class should store the player lives value and name, as well as method to reduce life by 1 when called
=end
class Player
  attr_accessor :name, :lives

  # create player with name and 3 lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  # deduct 1 for every wrong answer
  def deduct_life
    @lives -= 1
  end

  # if game_over, then game is over
  def game_over
    @lives == 0
  end

  # calculates player score from lives
  def get_score
    "#{@name} #{@lives}/3"
  end
  
  end