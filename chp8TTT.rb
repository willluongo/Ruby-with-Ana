alpha = []
puts 'please give me words to sort!'
while true
	thingy = gets.chomp.downcase
	if thingy == ''
		break
	else
		alpha.push(thingy)
	end
end
puts 'Awesome words, here they are in alphabetical order!'
puts alpha.sort

puts "Here is your original list:"
puts alpha


line_width = 50
title = 'Table of Contents'
puts(title.center(line_width))

chap = [['Chapter 1: Getting Started',                                    'page  1'],
		['Chapter 2: Numbers',											  'page  9'],
		['Chapter 3: Letters',											  'page 13']]
		
		chap.each do |ch|
			
			name = ch[0]
			page = ch[1]
			puts (name.ljust(line_width)) + (page.rjust(line_width))
		end
		