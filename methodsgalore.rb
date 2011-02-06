def rect_area (length, width)
 return length*width 
end
def tbsp2cup(tbsp)
  return tbsp/16.0
end
def cups2tbsp(cups)
  return cups*16.0
end
def torf(number1, number2)
  if number1%number2 == 0
    return true
  else
    return false
  end
end

def rect_compare(length_one, width_one, length_two, width_two)
  rect_one = length_one*width_one
  rect_two = length_two*width_two
  if rect_one > rect_two
    return "Rectangle one"
  elsif rect_two > rect_one
    return "Rectangle two"
  else
    return "They are the same."
  end
end

class Rect
  attr_reader :length, :width
  def initialize(length, width)
    @length = length
    @width = width
  end
end

def area(rectangle)
  return rectangle.length*rectangle.width
end

def compare(rectangle_one, rectangle_two)
  if area(rectangle_one) > area(rectangle_two)
    return rectangle_one
  elsif area(rectangle_two) > area(rectangle_one)
    return rectangle_two
  else
    return "They are the same."
  end
end
