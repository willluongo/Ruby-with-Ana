[]
[5]
['Hello',  'Goodbye']

flavor = 'vanilla'			#Not an array of course...
[89.9, flavor, [true, false]]	#...but  this is.

names = ['Ada', 'Belle', 'Chris']

puts names

puts''

puts names [0]
puts names [1]
puts names [2]
#puts names [3] is out of range.Duh!

puts''

other_peeps = []

other_peeps[3] = 'beebee Meaner'
other_peeps[0] = 'Ah-ha'
other_peeps[1] = 'Seedee'
other_peeps[0] = 'beebee Ah-ha'

puts other_peeps

puts''

languages = ['English', 'Norwegian', 'Ruby']

languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Don\'t  you?'
end

puts''

puts 'And let\'s hear it for Java!'
puts '<crickets chirp in the distance>'

puts''

#Go-go-gadget-integer-method...
3.times do
	puts 'Hip-Hip-Hooray!'
end

puts''

2.times do
	puts '...you can say that again...'
end

puts''

foods = ['artichoke', 'brioche', 'caramel']


puts foods

puts''

puts foods.to_s

puts''

puts foods.join(', ')

puts''

puts foods.join('   :)   ') +  '8)'

200.times do
	puts []
end

puts''

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'and whiskey on kittens'

puts''

puts favorites [0]
puts favorites.last
puts favorites.length

puts''

puts favorites.pop
puts favorites
puts favorites.length


puts 'Please give me some words to sort.'

puts''

words = gets.chomp.downcase.push

until words = ''
words = gets.chomp.downcase.push
end

puts words.sort

puts''

line_width = 40
end


puts''
puts''


puts ('Table of Contents'.center(line_width))

puts''

puts ('Chapter 1: Getting Started'.ljust(line_width)) + 'page 1'
puts ('Chapter 2: Numbers'.ljust(line_width)) + 'page 9'
puts ('Chapter 3: Letters'.ljust(line_width)) + 'page 13'

puts''

puts'Here are your lovely table of contents LINED UP BEAUTIFULLY!:)'







