# initialise new game with 2 players
# display lives
class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def game_over?
    !(@player1.game_over || @player2.game_over)
  end

  def start    
    puts "Welcome to my game!"

    while game_over? do 
      question = Question.new
      current_question = question.ask_question
      
      puts "#{@current_player.name}: #{current_question}"
      
      puts ">"
      user_answer = gets.chomp

      if user_answer.to_i == question.correct_answer
        puts "Yes! You are correct."
      else 
        puts "Seriously? No!"
        @current_player.deduct_life
      end

      puts @current_player.get_score
      
        if @current_player == @player1
          @current_player = @player2
        else
          @current_player = @player1
        end
      end
      puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
      puts "GAME OVER"
    
  end



    






  #  # displays p1 and p2 scores
  #  def show_score
  #   "#{get_score} vs #{get_score}"
  # end


  # def new_question
  #   # new_question = Question.new
  #   new_question.ask_question(name)

  #   print '> '


  #   @userchoice = $stdin.gets.chomp


  #   if new_question.check_answer?(@userchoice.to_i)
  #     puts 'Yes! You are correct.'
  #   else
  #     puts 'Seriously? No!'
  #     deduct_life
  #   end
  # end



end