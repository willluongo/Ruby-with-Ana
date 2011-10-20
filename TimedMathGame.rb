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
  correct = 0
  incorrect = 0
  timer = Timer.new
  while timer.passed < 60.0
    puts "\n\n\nYou have #{(60 - timer.passed).round} seconds left."
    num1 = rand(50)
    num2 = rand(50)
    puts "What is #{num1} + #{num2}?"
    input = gets.chomp.to_i
    if (input == num1 + num2) and timer.passed < 60
      correct += 1
      puts "#{input} is correct!"
    elsif timer.passed < 60
      incorrect += 1
      puts "I'm sorry, the correct answer was #{num1 + num2}."
    else
      puts "I'm sorry, you ran out of time before you answered, so your last answer didn't count."
    end
  end
  puts "You have #{correct} correct, and #{incorrect} incorrect."
end