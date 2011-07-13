puts ("Hello " .+ "world")

puts''

puts ((10. *  9). + 9)
puts self

puts''

var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP A magic spell?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts''

puts 'What is your full name?'
name = gets.chomp

puts 'Did you know there are ' + name.length.to_s + ' characters'
puts ' in your name, ' + name + '?'

puts''

puts 'What is your first name?'
f_name = gets.chomp

puts''

puts 'What is your middle name?'
m_name = gets.chomp

puts ''

puts 'What is your last name?'
l_name = gets.chomp

puts''

puts 'Did you know there are characters ' + (f_name.length + m_name.length + l_name.length).to_s
puts ' in your whole name?' 


puts''

letters = 'aAbBcCdDeE'

puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

puts''

line_width = 50

puts ('Old Mother Habbard')
puts ('sat in her cupboard')
puts ('Eating her curds and whey,')
puts ('When along came a spider')
puts ('And scared her poor shoe dog away.')


puts''


line_width = 40
str = '--> text <--'
puts (str.ljust( line_width))
puts (str.center(line_width))
puts (str.rjust( line_width))
puts (str.ljust(line_width/2) + str.rjust(line_width/2))



puts 'I am your angry boss! What do you want you weirdo!?'

want_a = gets.chomp

puts "WADDA YA MEAN " + want_a + "!?!? YOU'RE FIRED!!"


puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

puts''


puts (5-2).abs
puts (5-2).abs

puts ''


puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(99999999999999999999999999999999999999))
puts('The weatherman said there is a')
puts(rand(101).to_s + ' % chance of rain,')
puts('but you can never trust a weatherman.')

puts''

srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts''

srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts''

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)

puts''

































