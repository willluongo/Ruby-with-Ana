#Reqire date is using code already written for us to help us with the time and date.
require 'date'

#when the timer is put on for a certain amount of time it keeps track of that time and when it goes off it is reset
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

#Operators "plus", "minus", "divided by", and "times" are chosen at random 
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
  
  #random numbers are used with the operator to form a problem for the player to solve
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
	
	# Set abort to true so that errors in the thread do not fail silently
  Thread.abort_on_exception = true
  puts "Greetings traveler, what is your name?"
  player_name = gets.chomp
  
  right_now = DateTime.now
  @redos = []
  this_week = right_now.strftime(fmt='%U')
  player_file = "./#{player_name.downcase}-#{this_week}.txt"
  
        #If the person exists just add their work in their file, if it's a different person make a new file
  if File.exists?(player_file)
    file = File.open(player_file, "a+")
  else
    file = File.new(player_file, "w+")
  end
  puts "You've practiced #{file.readlines.length} times this week."
  
  #All players start out with 0 incorrect and correct, number limit 11, a new timer, and no interrupts until timer goes off and player hits enter.the reason the limit is 11 is because the 0 will make it so if I put 10 there would only be 9 options.
  puts "How long in seconds are you going to practice math today?"
  time_limit = gets.chomp.to_f
  correct = 0
  incorrect = 0
  number_limit = 11
  timer = Timer.new
  interrupt = false
  
  #until the players time is up it will use sleep so our computer does not over work and become slow
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
  
  #Until the players time is up the player will be told how much time he/she has left. Under different circumstances different messages will be used. "You have____seconds left...___is incorect...ran out of time before you answered...you got __correct and __incorrect...Successfully completed redos...whatever else"
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
  if (correct + incorrect) > 14
  	file.puts("#{right_now.strftime(fmt='%A %T')} In #{time_limit} seconds, #{player_name.capitalize} got #{correct} out of #{correct + incorrect}, for a grade of #{final_grade}%.")
	end
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