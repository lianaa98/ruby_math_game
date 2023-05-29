class Calculator

  attr_reader :first
  attr_reader :second
  attr_reader :answer

  def initialize
    @first = rand(1..10)
    @second = rand(1..10)
    @answer = @first + @second
  end

  def question
    puts "What does #{@first} plus #{@second} equal?"
  end

end