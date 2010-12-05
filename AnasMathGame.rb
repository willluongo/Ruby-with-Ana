def multiplication
  #pick two random numbers
  
  first_number = rand(10)+1
  second_number = rand(10)+1
  
  #ask player for product of the two random numbers
  puts "Please find the product of #{first_number} and #{second_number}. Give me the answer when you are ready." 
  
  answer = gets.chomp.to_i
  
  product = first_number * second_number
    
    #check to see if player is right
  if answer == product
    puts "You Win!"
  elsif answer >= product-5 and answer <= product+5
    puts "You were close! The answer was #{product}!"
  else 
    puts "Great effort, but try harder next time.The answer was #{product}."
  end
  
  menu
end

def addition
  # Pick Two Random Numbers  
  first_number = rand(10)+1
  second_number = rand(10)+1
  
  # Ask the player for the Sum of the two numbers
  puts "Please find the sum of #{first_number} and #{second_number}. Give me the answer when you are ready."
  answer = gets.chomp.to_i
  sum = first_number + second_number
  
  # Check to see if player is right
  # Return a result message
  if answer == sum 
    puts "You did awesome!"
  elsif answer >= sum-5 and answer <=  sum+5
    puts "You were really close! The answer was #{sum}!"
  else
    puts "Great effort, but try harder next time. The answer was #{sum}"
  end
  
  # Call the menu function
  menu
end

def subtraction
  # Pick two random numbers
  first_number = rand(10)+1
  second_number = rand(10)+1
  
  
  # Ask the player for the difference of the two numbers
  puts "Please find the difference of #{first_number} and #{second_number}. Give the answer when you are ready please."
  answer = gets.chomp.to_i
  difference = first_number - second_number
  
  # Check to see if the player is right
  # Return a result message
  if answer == difference
    puts "Holy McNuggets you're smart! That's right!"
  elsif answer >= difference-5 and answer <= difference+5
    puts "Gawsh, that's close! The answer was #{difference}"
  else
  puts "Darn! Work on your subtraction and you'll get it someday! The answer was #{difference}."
end
  
  # Call the menu function
  menu
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
  answer = gets.chomp.to_i
  quotient = first_number / second_number
  
  # Check to see if the player is right
  # Return a result message
  if answer == quotient
    puts "You are awesome at division! Keep it up!"
elsif answer >= quotient-5 and answer <= quotient+5
  puts "That was so close! The answer was #{quotient}."
else
  puts "Great effort, but try harder next time. The answer was #{quotient}."
end
  # Call the menu function
menu  
end

def menu
  puts "\n\nTo play our math game, pick one of the following problems!\n\nmultiplication\ndivision\nsubtraction\naddition\n\nOr, if you are tired of playing, type quit."
end

menu