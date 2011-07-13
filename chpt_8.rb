#Arrays are just lists in our computers!How simple! :)

[]
[5]
['Hello', 'Goodbye'] 


flavor = 'vanilla' # Not an array of course...
[89.9, flavor, [true, false]] # ...but this

puts''

names = ['Ada', 'Belle', 'Chris']

puts names
puts''
puts names [0]
puts names [1]
puts names [2]
puts names [3]
 # This is obviously not right because there are only three people and it starts at 0.
 # I didn't even need help from the book to see that!
puts''

other_peeps = []

other_peeps[3] = 'beebee Meaner'
other_peeps[0] = 'Ah-ha'
other_peeps[1] = 'Seedee'
other_peeps[0] = 'beebee Ah-ha'


puts other_peeps


languages = ['English', 'Norwegian', 'Ruby']

languages.each do |lang|
puts 'I love ' + lang + '!'
puts 'Don\'t you?'
end

puts''

puts 'And let\'s hear it for Java!'
puts '<crickets chirp in the distance>'

# Go_go_gadget-integer-method...

3.times do
	puts 'Hip-Hip-Hooray!'
end

puts''

2.times do
	puts '...you can say that again...'
end
foods = ['artichoke', 'brioche', 'caramel']

puts foods

puts''

puts foods.to_s

puts''

puts foods.join(', ')

puts''

puts foods.join(' :) ') + ' 8)'

200.times do
puts []
end


favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'

puts ''

puts favorites[0]
puts favorites.last
puts favorites.length

puts''

puts favorites.pop
puts favorites
puts favorites.length


puts 'A few things to try unfortunatly.'

puts 'Please give me some words to sort.'
words = gets
words = []
while true
	words.push
	if words == ''
		break
	end
end
puts 'I sorted all of your words awesomely!'








































