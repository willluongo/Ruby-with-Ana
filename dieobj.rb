class Die
  def initialize(sides)
    @sides = sides
  end
  
  def roll
    rand(@sides)+1
  end
end
