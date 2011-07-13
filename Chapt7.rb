# 
# puts 'Chapter 7!'
# 
# puts''
# 
# puts 1 > 2
# puts 1 < 2
# 
# puts''
# 
# puts 5 >= 5
# puts 5 <= 4
# 
# puts''
# 
# puts 1 == 1
# puts 2 != 1
# 
# puts''
# 
# puts 'cat' < 'dog'
# 
# puts ''
# 
# puts 'bug lady'         <'Xander'
# puts 'bug lady'.downcase<'Xander'.downcase
# 
# puts''
# 
# puts 2 < 10
# puts '2' < '10'
# 
# 
# puts''
# 
# 
# puts 'Hello,  what\'s your name?'
# name = gets.chomp 
# puts'Hello, ' + name + '.'
# 
#  if name == 'Chris'
#   puts 'What a lovely name!'
#  end
# 
# puts''
# 
# puts 'I am a fortune-teller. Tell me your name:'
# name = gets.chomp
# 
#  if name == 'Chris'
#   puts 'I see great things in your future.'
#  else
#   puts 'Your future is...oh my! Look at the time!'
#   puts 'I really have to go, sorry!'
#  end
# 
# puts''
# 
# puts 'Hello, and welcome to seventh grade English.'
# puts 'My name is Mrs Gabbard. And yours is...?'
# name = gets.chomp
# 
#  if name == name.capitalize
#   puts 'Please take a seat,' + name + '.'
#  else
#   puts name + '? You mean' + name.capitalize + ', right?'	
#   puts 'Don\'t you even know how to spell your own name??'
#   reply = gets.chomp
#   
#  if reply.downcase == 'yes'
#   puts 'Hmmph! Well, sit down!'
#  else
#   puts 'GET OUT!!'
#  end
#  end
# 
# puts''
# 
#  input = ''
# 
# 
#  while input != 'bye'
#   puts input
#   input = gets.chomp
#  end
#  
#  puts''
#  
#  puts 'Come again soon!'
# 
# #THIS IS SO TOATALLY A REAL PROGRAM!
# 
#  while 'Spike' > 'Angel'
#   input = gets.chomp
#   puts input
#   if input == 'bye'
#    break
#   end
#  end 
# 
# puts 'Come again soon!'
# 
#  while true 
#   input = gets.chomp
#   puts input
#  if input == 'bye'
#   break
#   end
#  end 
# 
# puts'Come again soon'
# 
# puts''
# 
# 
# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'
# 
#  if name == 'Chris'
#   puts 'What a lovely name!' 
#  elsif name == 'Katy'
#    puts 'What a lovely name!'
#  end
# 
# 
# puts''
# 
# 
# puts'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'
# 
#  if name == ('Chris' || 'Katy')
#   puts 'What a lovely name!'
#  end
# 
# puts''
# 
# i_am_Chris = true
# i_am_purple = false
# i_like_beer = true
# i_eat_rocks = false
# 
# puts''
# 
# puts i_am_Chris && i_like_beer
# puts i_like_beer && i_eat_rocks
# puts i_am_purple && i_like_beer
# puts i_am_purple && i_eat_rocks
# 
# puts''
# 
# puts i_am_Chris || i_like_beer
# puts i_like_beer || i_eat_rocks
# puts i_am_purple || i_like_beer
# puts i_am_purple || i_eat_rocks
# 
# puts''
# 
# puts !i_am_purple
# puts !i_am_Chris
# 
# puts''
# 
#  while true
#   puts 'What would you like to ask C to do?'
#   request = gets.chomp 
#   
#   
#   puts 'You say, "C, please' + request + '"'
# 
#  puts 'C\'s respons:'
# 
# puts '"C '  + request +'."'
# puts '"Papa ' + request + ', too."'
# puts '"Mama ' + request + ', too."'
# puts '"Ruby ' + request + ', too."'
# puts '"Nono ' + request + ', too."'
# puts '"Emma ' + request + ', too."'
# 
# puts''
# 
# 
#  if request == 'stop'
#   break
#  end
# end


# 
# 
# puts 'Hi I am your Grandma!Speak up so I can hear you!'
# 
# respond = gets.chomp
# 
# until respond == 'BYE!BYE!BYE!'
# 	if respond == respond.downcase
#   		puts 'Speak up honey!I can\'t hear you!'
# 		
# 	else
# 		puts 'Not since ' + (rand(1995)).to_s + ' as I recall it.'
# 	end
# 	respond = gets.chomp
# end

# 
# 
# bottles_of_beer = 99
# until bottles_of_beer == 0
# 	puts  bottles_of_beer.to_s + 'bottles of beer on the wall!Go get one down pass it arond ' + (bottles_of_beer = bottles_of_beer - 1).to_s + '.'	
# end
# 
# bottles_of_beer = 99
# until bottles_of_beer == 0
# 	puts "#{bottles_of_beer} bottles of beer on the wall, #{bottles_of_beer} bottles of beer!"
# 	puts "Take one down, pass it around, #{bottles_of_beer = bottles_of_beer -1} bottles of beer on the wall!"
# end
# puts "NO MORE BOTTLES OF BEEEEEER!"

puts "What is the starting year?"
start = gets.chomp.to_i
puts "What is the ending year?"
end_year = gets.chomp.to_i
range = (start..end_year)
range.each do | this_year |
	if this_year % 4 == 0
		unless this_year % 100 == 0 and this_year % 400 != 0
			puts "#{this_year} is a leap year."
		end
	end
end


puts "What is the starting year?"
start = gets.chomp.to_i
puts "What is the ending year?"
end_year = gets.chomp.to_i
this_year = start
until this_year == end_year
	if this_year % 4 == 0
		unless this_year % 100 == 0 and this_year % 400 != 0
			puts "#{this_year} is a leap year."
		end
	end
	this_year = this_year + 1
end