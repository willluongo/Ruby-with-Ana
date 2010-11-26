# Tell user to pick a number
puts "Pick a number: "

# This line sets the first number to input from the user, removing any special character, and converts to int
first_number = gets.chomp.to_i

# Tells the user to pick a second number
puts "Pick another number: "

# Assigns a string from the user to second number, after removing special characters and converting to integer
second_number = gets.chomp.to_i

# Shows the numbers the users picks, and adds some natural language, displays sum of numbers
puts first_number.to_s + " plus " + second_number.to_s + " equals " + (first_number + second_number).to_s

# Does the exact same as above, but more Ruby-ish
puts "#{first_number} plus #{second_number} equals #{first_number + second_number}"
