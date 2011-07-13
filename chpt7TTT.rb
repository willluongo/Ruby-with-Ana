bob = 99

while bob >= 1
	puts bob.to_s + " bottle#{bob == 1 ? "" : "s"} of beer on the wall." 
	puts bob.to_s + " bottle#{bob == 1 ? "" : "s"} of beer."
	puts "Take one down, pass it around"
    puts "#{bob = bob-1} bottle#{bob == 1 ? "" : "s"} of beer on the wall!"
end

puts''

puts "HI THERE SONNY!TALK TO YOUR GREAT GREAT GREAT GRANDMA!!!!"
bye_count = 0

while true
	response = gets.chomp
	if response == 'BYE'
		bye_count = bye_count + 1
			if bye_count == 3
				break
			else
				puts "Don't leave me! You ungrateful retch!"
			end
	elsif response == response.downcase
		puts "SPEAK UP SONNY!!!"
	elsif response == response.upcase
		puts "NOT SINCE 1938!!!!"
    end
end

puts''

puts "Please pick a starting year."
s_y = gets.chomp.to_i

puts "Please pick an ending year, greater or equal to your starting year."
e_y = gets.chomp.to_i

puts "Let's find some leap years!!!!!"

while s_y <= e_y
	if s_y % 4 == 0
		if s_y % 100 != 0 || s_y % 400 == 0
			puts s_y
		end
	end
	s_y = s_y + 1
end