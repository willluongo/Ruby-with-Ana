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

class Problem
  def initialize(max_value)
    @type = rand(4)
    @num_1 = rand(max_value)
    @num_2 = rand(max_value)
    case @type
    when 0
      @operator = "plus"
    when 1
      @operator = "minus"
    when 2
      @operator = "divided by"
    when 3
      @operator = "times"
    else
      abort("Illegal problem type.")
    end
  end
  
  def prompt
    unless @type == 2
      puts "What is #{@num_1} #{@operator} #{@num_2}?"
    else
      puts "What is #{@num_1 * (@num_2 + 1)} divided by #{@num_2 + 1}?"
    end
  end
  
  def answer
    case @type
    when 0
      return @num_1 + @num_2
    when 1
      return @num_1 - @num_2
    when 2
      return @num_1
    when 3
      return @num_1 * @num_2
    else
      abort("Illegal problem type.")
    end
  end
end
    
if __FILE__ == $0
  Thread.abort_on_exception = true
  puts "Greetings traveler, what is your name?"
  player_name = gets.chomp
  
  right_now = DateTime.now
  @redos = []
  this_day = right_now.strftime(fmt='%Y%m%d')
  player_file = "./#{player_name.downcase}-#{this_day}.txt"
  
        
  if File.exists?(player_file)
    file = File.open(player_file, "a+")
  else
    file = File.new(player_file, "w+")
  end
  puts "You've practiced #{file.readlines.length} times today."
  
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
        sleep 1
      else
        sleep 1
      end
    end
  }
  
  until interrupt
    puts "\n\n\nYou have #{(time_limit - timer.passed).round} seconds left."
    problem = Problem.new(number_limit)
    problem.prompt
    input = gets.chomp.to_i
    unless interrupt
      if input == problem.answer
        correct += 1
        puts "#{input} is correct!"
        number_limit += 2
      else
        incorrect += 1
        puts "I'm sorry, #{input} is incorrect. Don't worry, you will get a chance to try again."
        @redos.push problem
      end
    else
      puts "I'm sorry, you ran out of time before you answered. I'll just add this to the list of redos!"
      @redos.push problem
    end
  end
  puts "You got #{correct} correct, and #{incorrect} incorrect."
  unless (correct + incorrect) > 0
    final_grade = 0
  else
    final_grade = ((correct/(correct+incorrect).to_f)*100).round
  end
  puts "Your final grade is #{final_grade}%"
  file.puts("#{right_now.strftime(fmt='%T')}  #{player_name.downcase} got #{correct} out of #{correct + incorrect}, for a grade of #{final_grade}%.")
  file.close
  puts "Now for the redos!"
  while @redos.length > 0
    problem = @redos.pop
    problem.prompt
    input = gets.chomp.to_i
    if input == problem.answer
      puts "#{input} is correct!"
    else
      puts "I'm sorry, #{input} is incorrect. Don't worry, you will get a chance to try again."
      @redos.push problem
    end
  end
  puts "Good job, you've successfully completed your #{incorrect} redos!"
end