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

def add_gen(num1, num2)
  puts "What is #{num1} + #{num2}?"
  return num1 + num2
end

def sub_gen(num1, num2)
  puts "What is #{num1} - #{num2}?"
  return num1 - num2
end
    
if __FILE__ == $0
  puts "How long in seconds are you going to practice math today?"
  time_limit = gets.chomp.to_f
  correct = 0
  incorrect = 0
  number_limit = 11
  timer = Timer.new
  interrupt = false
  
  Thread.new {
    while true
      if timer.passed >= time_limit
        puts "\nSorry, you've run out of time."
        puts "You got #{correct} correct, and #{incorrect} incorrect."
        puts "Your final grade is #{((correct/(correct+incorrect).to_f)*100).round}%"
        exit
      end
    end
  }
  
  while timer.passed < time_limit + 1
    puts "\n\n\nYou have #{(time_limit - timer.passed).round} seconds left."
    num1 = rand(number_limit)
    num2 = rand(number_limit)
    if rand(2) == 1
      answer = add_gen(num1, num2)
    else
      answer = sub_gen(num1, num2)
    end
    input = gets.chomp.to_i
    if input == answer
      correct += 1
      puts "#{input} is correct!"
      number_limit += 2
    else
      incorrect += 1
      puts "I'm sorry, the correct answer was #{answer}."
    end
  end
end