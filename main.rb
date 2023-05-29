require './player.rb'
require './random_calculator.rb'
require './evaluator.rb'

# Evaluator
# Player response to answer

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
        puts "Player 2: YES! You are correct!"
        @eval.player2.score -= 1
      else
        puts "Player 2: Seriously? No!"
      end
    end

    current_score





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

# while no one gets to 1/3, continue looping game 


# New Turn / Game Over line