# Prompt user for # between 1 and 100
puts "Pick a number between 1 and 1,000,000. (No commas, please)"
highest_number = 1000001
lowest_number = 0
done = false

until done
# Guess number
guess = (highest_number + lowest_number)/2
puts "I guess #{guess}. Is your number higher or lower? If my guess is right say GOT IT!"

# Ask user: Higher? Lower? WIN?!

guess_response = gets.chomp
# if it is higher than guess, then pick higher number under highest boundary
if guess_response == "higher"
  lowest_number = guess
end

# if it is lower than guess, then pick a lower number higher than lowest boundary
if guess_response == "lower"
  highest_number = guess
end

# if the guess is right, say "I win!"
if guess_response == "GOT IT!"
  puts "I win!"
  done = true
end

# Repeat from guess
# 
end