puts 'I am your angry boss!WADDA YA WANT DIM WIT?!Oh...And make it snappy!'

want = gets.chomp.to_s

puts 'WADDA YA MEAN ' + want + '!?!?!?!Your fired!'

puts''

line_width = 40

puts ('Table of contents'.center(line_width))

puts''

puts ('Chapter 1: Getting Started'.ljust(line_width)) +'page 1'
puts ('Chapter 2: Numbers'.ljust(line_width)) + ('page 9')
puts ('Chapter 3: Letters'.ljust(line_width)) + ('page 13')

puts''

puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

puts''

puts (5-2).abs
puts (2-5).abs

puts''

puts rand 
puts rand
puts rand

puts''

puts (rand(100))
puts (rand(100))
puts (rand(100))

puts''

puts (rand(1))
puts (rand(1))
puts (rand(1))

puts''
#37 9s!
puts (rand(9999999999999999999999999999999999999))

puts''

puts ('The weatherman said there is a')
puts (rand(101).to_s + '% chance of rain,')
puts ('but you can never trust a weatherman.')

puts''

srand 1976

puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(100))

puts''

srand 1976

puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(100))

puts''

puts (Math::PI)
puts (Math::E)
puts (Math.cos(Math::PI/3))
puts (Math.tan(Math::PI/4))
puts (Math.log(Math::E**2))
puts ((1 + Math.sqrt(5))/2)



































