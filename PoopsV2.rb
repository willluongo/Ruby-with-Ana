require './dieobj.rb'

die1 = Die.new(6)
die2 = Die.new(6)
roll = die1.roll + die2.roll
puts "You rolled #{roll}."
if roll == 7 or roll == 11
  puts "You Win!"
  exit
elsif roll == 2 or roll == 3 or roll == 12
  puts "You poop out! Try again."
  exit
else 
  @point = roll
end

stop = false

until stop
  roll = die1.roll + die2.roll
  puts "You rolled #{roll}."
  if roll == 7
    puts "You pooped out!"
    stop = true
  elsif roll == @point
    puts "You hit your point! YOU WIN!!!!!!"
    stop = true
  else
    puts "Roll until you hit your point."
  end
end

