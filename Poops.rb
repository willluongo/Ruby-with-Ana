# A die object takes a single argument (sides). It then uses it when the roll method is called, and picks a random number from 1 through the number of sides specified when the object is created.
class Die
  def initialize(sides)
    @sides = sides
  end
  def roll
    rand(@sides)+1
  end
end

#Create two dice (die) objects
@die_1 = Die.new(6)
@die_2 = Die.new(6)
# roll the two dice, return the total
def total
  return @die_1.roll + @die_2.roll
end

#check to see if this roll wins or loses, tell the player score.
first_roll = total
if total == 7
puts "you win!"
end
#Roll two six sided dice. 
puts"Please type in 'roll' when you are ready.Don't forget to have fun!"
if first_roll == 7 or 11
puts "You Win!"
elsif first_roll == 2 or 3 or 12
puts "You just got POOPED OUT!Sorry you lose."
elsif first_roll == 4 or 5 or 6 or 8 or 9 or 10
puts "Keep on rolling. You're doing great!"
end

#Record total of both die.
puts "@die_1.roll + @die_2.roll"
#Figure out if you have won, lost, or need to keep rolling.


#If you got 7 or 11 you won. If you lost you would have gotten 2,3, or 12.


#If you got none of those numbers roll again to try and get the total you first got.


#If you get the same number you did your first roll you win, but if you get a seven any roll but your first roll then you lose.

