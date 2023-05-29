require './player.rb'
require './random_calculator.rb'
require './evaluator.rb'

class Game

  def initialize
    @eval = Evaluator.new
    @current_player = @eval.player2
    @current_answer = true
    @round_count = 0
  end

  def round_ends
    if @current_player == @eval.player1
      @current_player = @eval.player2
    else
      @current_player = @eval.player1
    end
  end

  def start

    loop do

    if @current_player == @eval.player1
      print "Player 2: "
      round
      if @current_answer == true
        puts "Player 2: YES! You are correct!"
        @eval.player1.score -= 1
      else
        puts "Player 2: Seriously? No!"
      end
    else
      print "Player 1: "
      round
      if @current_answer == true
        puts "Player 1: YES! You are correct!"
        @eval.player2.score -= 1
      else
        puts "Player 1: Seriously? No!"
      end
    end

    current_score
    round_ends
    if (@eval.player1.score == 1 || @eval.player2.score == 1)
      break
    else
      puts "----- NEW TURN -----"
    end

  end
  
    if (@eval.player1.score == 1)
      puts "Player 1 wins with a score of 1/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    else
      puts "Player 2 wins with a score of 1/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
  end

  def round
    first = rand(1..10)
    second = rand(1..10)
    answer = first + second

    puts "What does #{first} plus #{second} equal?"
    print "> "
    ans = gets.chomp.to_i
    if ans == answer
      @current_answer = true
    else
      @current_answer = false
    end
  end

  def current_score
    # P1: 2/3 vs P2: 3/3
    puts "P1: #{@eval.player1.score}/3 vs P2 #{@eval.player2.score}/3"
  end

end

game = Game.new
game.start