=begin 
  should store responses for right/wrong answer;
  should store next turn/game over 
=end
class Question
  attr_reader :random_num1, :random_num2, :correct_answer, :player_answer
  
  # create question with 2 numbers to add
  # correct answer to compare input against
  def initialize
    # do I need to initialise this?
    @random_num1 = rand(1...20)
    @random_num2 = rand(1...20)
    @correct_answer = random_num1 + random_num2
  end
  
  # random math 1-20 method
  def ask_question
    "What does #{random_num1} plus #{random_num2} equal?"
  end
  
end