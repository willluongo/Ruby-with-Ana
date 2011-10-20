require 'date'

class Timer
  def initialize
    @start_time = DateTime.now
  end
  def reset
    @start_time = DateTime.now
  end
  def passed
    (DateTime.now - @start_time).to_f * 24 * 60 * 60 
  end
end
    
if __FILE__ == $0
  time_limit = 60.0
  correct = 0
  incorrect = 0
  timer = Timer.new
  interrupt = false
  
  Thread.new {
    while true
      if timer.passed >= time_limit
        puts "\nSorry, you've run out of time."
        puts "You got #{correct} correct, and #{incorrect} incorrect."
        puts "Your final grade is #{(((correct+incorrect).to_f/correct)*100).round}%"
        exit
      end
    end
  }
  while timer.passed < time_limit
    puts "\n\n\nYou have #{(time_limit - timer.passed).round} seconds left."
    num1 = rand(50)
    num2 = rand(50)
    puts "What is #{num1} + #{num2}?"
    input = gets.chomp.to_i
    if input == num1 + num2
      correct += 1
      puts "#{input} is correct!"
    else
      incorrect += 1
      puts "I'm sorry, the correct answer was #{num1 + num2}."
    end
  end
  
end