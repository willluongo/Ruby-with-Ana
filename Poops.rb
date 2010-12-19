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