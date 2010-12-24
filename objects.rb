class Present
  def initialize(color, contents, sound)
    @color = color
    @contents = contents
    @sound = sound
  end
  
  
  def describe
    puts "The present is wrapped in shiny #{@color} paper."
  end

  def unwrap
    puts "You unwrap the present to discover what you have been wanting all year... #{@contents}!"
  end  

  def shake
    puts @sound
  end
  
end
