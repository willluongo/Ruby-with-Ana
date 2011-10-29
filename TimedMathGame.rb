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
  puts "Greetings traveler, what is your name?"
  player_name = gets.chomp
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
        interrupt = true
        puts "\nSorry, you've run out of time."
        puts "You got #{correct} correct, and #{incorrect} incorrect."
        final_grade = ((correct/(correct+incorrect).to_f)*100).round
        right_now = DateTime.now
        this_day = right_now.strftime(fmt='%Y%m%d')
        puts "Your final grade is #{final_grade}%"
        player_file = "./#{player_name}-#{this_day}.txt"
        if File.exists?(player_file)
          file = File.open(player_file, "w")
          file.puts("#{right_now.strftime(fmt='%T')}  #{player_name} got #{correct} out of #{correct + incorrect}, for a grade of #{final_grade}%.")
          file.close
        else
          file = File.new(player_file, "w")
          file.puts("#{right_now.strftime(fmt='%T')}  #{player_name} got #{correct} out of #{correct + incorrect}, for a grade of #{final_grade}%.")
          file.close
        end
        exit
      end
    end
  }
  
  until interrupt
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