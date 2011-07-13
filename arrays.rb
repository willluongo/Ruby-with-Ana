[]
[5]
['Hello', 'Goodbye']


flavor = 'vanilla'
[89.9, flavor, [true, false]]


names = ['Ada', 'Belle', 'Chris']


puts names

puts''

puts names [0]
puts names [1]
puts names [2]
#puts names [] <- This would be out of range

puts''

other_peeps = []

other_peeps [3] = 'beebee Meaner'
other_peeps [0] = 'Ah-ha'
other_peeps [1] = 'Seedee'
other_peeps [0] = 'beebee Ah-ha'

puts other_peeps

puts''

languages = ['English', 'Norwegian', 'Ruby']


languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Dont\'t you?'
end

puts''

puts 'And let\'s hear it for Java!' 
puts '<crickets chirp in the distance>'

puts''

puts'heh-heh.'

puts''

# Go-go-gadget-integer-method...
3.times do
	puts 'Hip-Hip-Hooray'
end

puts''

2.times do
	puts '...you can say that again...'
end

puts''

foods = ['artichoke', 'brioche', 'caramal']

puts foods

puts''

puts foods.to_s

puts''

puts foods.join(', ')

puts''

puts foods.join('  :) ')+'  8)'

puts''

puts favorites = []
puts favorites.push 'raindrop on roses'
puts favorites.push 'whikey on kittens'

puts''

puts favorites[0]
puts favorites.last
puts favorites.length

puts''

puts favorites[0]
puts favorites
puts favorites.length

puts''
puts''

puts 'Please give me as many words as you would like for me to sort. :)'

sort_it = []

words = gets.chomp
until words == ''
	sort_it.push words
	words = gets.chomp
end

puts 'here are your words sorted'
puts sort_it.sort

toc = []

line_width = 40

puts''

toc.push('Table of contents'.center(line_width))


toc.push(('Chapter 1: Getting Started'.ljust(line_width))+('page 1'.rjust(0)))

toc.push(('Chapter 2: Numbers'.ljust(line_width))+('page 9'.rjust(0)))

toc.push(('Chapter 3: Letters'.ljust(line_width))+('page 13'.rjust(0)))

puts toc


































