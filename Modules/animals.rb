class Animal
  attr_accessor :age, :height, :weight, :color, :breed
  
  def initialize(age, height, weight, color, breed)
    @age = age
    @height = height
    @weight = weight
    @color = color
    @breed = breed
  end
  
end

class Rabbit < Animal
  
end

class Dog < Animal
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
end

class Cat < Animal
  def meow
    if @age <= 1
      puts "Mew. mew."
    else
      puts "Meow."
    end
  end
end