require './player.rb'
require './random_calculator.rb'

# Evaluator
# Player response to answer
# P1: 2/3 vs P2: 3/3

class Evaluator

  def initialize
    @player1 = Player.new
    @player2 = Player.new
  end

  def start
    puts "Player 1: "
  end


end

# while no one gets to 1/3, continue looping game 


# New Turn / Game Over line


puts "answer:"
ans = gets.chomp
puts "Your answer is: #{ans}"