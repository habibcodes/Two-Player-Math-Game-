# initialise new game with 2 players
# display lives
class Game

  # set up p1 and p2, set current player
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  # player life check
  def game_over?
    !(@player1.game_over || @player2.game_over)
  end

  def start    
    puts "------Welcome to my game!------"
    # ask questions until player life check met
    while game_over? do 
      question = Question.new
      current_question = question.ask_question
      
      puts "#{@current_player.name}: #{current_question}"
      
      # take user input here
      puts ">"
      user_answer = gets.chomp
      # if answer correct/if answer wrong, deduct life
      if user_answer.to_i == question.correct_answer
        puts "Yes! You are correct."
      else 
        puts "Seriously? No!"
        @current_player.deduct_life
      end
      # show player score
      puts @current_player.get_score
        # switch current player
        if @current_player == @player1
          @current_player = @player2
        else
          @current_player = @player1
        end
      end
      # if someone loses all life, print current winner
      puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
      puts "------GAME OVER------"
    
  end
end