def multiplier
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
end