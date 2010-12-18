def multiplication
  #pick two random numbers
  
  first_number = rand(10)+1
  second_number = rand(10)+1
  
  #ask player for product of the two random numbers
  puts "Please find the product of #{first_number} and #{second_number}. Give me the answer when you are ready." 
  
  player_guess = gets.chomp.to_i
  
  correct_answer = first_number * second_number
    
  #check to see if player is right
  answer_check(player_guess, correct_answer)
  
end

def addition
  # Pick Two Random Numbers  
  first_number = rand(10)+1
  second_number = rand(10)+1
  
  # Ask the player for the Sum of the two numbers
  puts "Please find the sum of #{first_number} and #{second_number}. Give me the answer when you are ready."
  player_guess = gets.chomp.to_i
  correct_answer = first_number + second_number
  
  # Check to see if player is right
  # Return a result message
  answer_check(player_guess, correct_answer)
  
end

def subtraction
  # Pick two random numbers
  first_number = rand(10)+1
  second_number = rand(10)+1
  
  
  # Ask the player for the difference of the two numbers
  puts "Please find the difference of #{first_number} and #{second_number}. Give the answer when you are ready please."
  player_guess = gets.chomp.to_i
  correct_answer = first_number - second_number
  
  # Check to see if the player is right
  # Return a result message
  answer_check(player_guess, correct_answer)
  
end

def division
  # Pick two random numbers
  first_number = rand(100)+1
  second_number = rand(first_number)+1
  
  until first_number%second_number == 0
    second_number = rand(first_number)+1
  end
  # Ask the player for the quotient
  puts "Please find the quotient of #{first_number} divided by #{second_number}. Give me the answer when you are ready."
  player_guess = gets.chomp.to_i
  correct_answer = first_number / second_number
  
  # Check to see if the player is right
  # Return a result message
  answer_check(player_guess, correct_answer)

end

def answer_check(guess, correct)
  if guess == correct
    puts "You Win!"
  elsif guess >= correct-5 and guess <= correct+5
    puts "You were close! The answer was #{correct}!"
  else 
    puts "Great effort, but try harder next time.The answer was #{correct}."
  end
end

def operation(type)
  first_number = rand(100)+1
  if type == :division
    second_number = rand(first_number)+1
    until first_number%second_number == 0
      second_number = rand(first_number)+1
    end
  else
    second_number = rand(100)+1
  end
  
  case type
  when :division
    correct = first_number / second_number
    result = "quotient"
  when :multiplication
    correct = first_number * second_number
    result = "product"
  when :subtraction
    correct = first_number - second_number
    result = "difference"
  when :addition
    correct = first_number + second_number
    result = "sum"
  else
    puts "Invalid Parameter"
  end
  
  puts "Please find the #{result} of #{first_number} and #{second_number}."
  answer_check(gets.chomp.to_i, correct)
end