class Dog
  def initialize(age, height, weight, breed)
    @age = age
    @height = height
    @weight = weight
    @breed = breed
  end
  
  def bark
    if @height < 11
      puts "Yip, YIP!"
    elsif @height < 50
      puts "Woof!"
    elsif @height < 75 
      puts "WOOF!"
    else
      puts "ROOF!"
    end
  end
  
  def age
    return @age
  end
  
  def height
    return @height
  end
  
  def weight
    return @weight
  end
  
  def breed
    return @breed
  end
  
end