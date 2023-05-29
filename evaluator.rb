require './player.rb'

class Evaluator

  attr_accessor :player1
  attr_accessor :player2

  def initialize
    @player1 = Player.new
    @player2 = Player.new
  end

  def current_score
    # P1: 2/3 vs P2: 3/3
    puts "P1: #{@player1.score}/3 vs P2 #{@player2.score}/3"
  end
  
end

eval = Evaluator.new
eval.current_score