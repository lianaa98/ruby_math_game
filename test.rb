class Test

  attr_reader :current_answer

  def initialize
    @current_answer = true
  end

  def start
  first = rand(1..10)
  second = rand(1..10)
  answer = first + second
  
  puts "What does #{first} plus #{second} equal?"
  print "> "
  ans = gets.chomp.to_i
  puts "your answer is #{ans}"
  puts "real answer is #{answer}"
  if ans == answer
    @current_answer = true
  else
    @current_answer = false
  end
end

end

test = Test.new
puts test.current_answer
test.start
puts test.current_answer



