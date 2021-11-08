=begin 

  - 2 players
  - each has 3 lives --> 3/3
  - game ends when 0/3 for any

  - turn based
  - after each question, tell user if wrong or right
    - if wrong, remove life from player whos turn it is 

  - classes
    - player
      - lives
      - name
    - game
      - question
        - random number b/w 1-20

=end

class Player
=begin 
  player class should store the player lives value and name, as well as method to reduce life by 1 when called
=end
  attr_accessor :name, :lives

  def initialise(name)
    @name = name
    @lives = 3
  end

  def deduct_life
    @lives -= 1
  end

  def game_over
    @lives == 0
  end

  def get_score
    @lives
  end

end


class Game
  # initialise new game with 2 players
  # display lives


end

class Question 

=begin 
  should store responses for right/wrong answer;
  should store next turn/game over 
=end

  def initialize
    # do I need to initialise this?
  end
  
  # random math 1-20 method
  def ask_question
    random_num1 = rand(1...20)
    random_num2 = rand(1...20)
    return "Player #{player}: What does #{random_num1} plus #{random_num2} equal?"
  end

  # right answer
  def right_response    
    "YES! You are correct."
  end
  # wrong answer
  def wrong_response
    "Seriously? No!"
  end


end