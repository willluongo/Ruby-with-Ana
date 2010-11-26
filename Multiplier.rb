# For the next nine lines we are telling the user to pick four numbers number and "puts" is telling the program to put the message on the screen for the user to see.
# The lines that say Blank_number = gets... is telling the program to make the number is reconized as an integer and receive the numbers the user has put in and chomp takes off any special unwanted characters.
puts "Pick a number"
first_number = gets.chomp.to_i
puts "Pick another number"
second_number = gets.chomp.to_i
puts "Pick another number again"
third_number = gets.chomp.to_i
puts "Pick one last number"
fourth_number = gets.chomp.to_i
# For the next three lines we are adding the first and second numbers together and then we do the same with the third and fourth numbers.After that we multiply the two sums.The curly brasket and number symbol converts numbers into strings. The perenthesies show what to do first in math like in a regulare problem.
puts "#{first_number} plus #{second_number} equals #{first_number + second_number}"
puts "#{third_number} plus #{fourth_number} equals #{third_number + fourth_number}"
puts "#{third_number + fourth_number} times #{first_number + second_number} equals #{(third_number + fourth_number) * (first_number + second_number)}"
