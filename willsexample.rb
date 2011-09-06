def average(first_number, second_number)
  (first_number + second_number)/2
end

def greet(name)
  puts "Hi there, #{name}! How are you today?!"
end

class Fighter
  attr_reader :name, :hitpoints
  def initialize(name, hitpoints, high_attack, low_attack, block, defend)
    @name = name
    @hitpoints = hitpoints
    @high_attack = high_attack
    @low_attack = low_attack
    @block = block
    @defend = defend
  end
  
  def high_attack(target)
    attack_value = rand(@high_attack)
    puts "#{@name} punches #{target.name} and does #{attack_value} damage!"
    target.defend(attack_value)
  end
  
  def low_attack(target)
    attack_value = rand(@low_attack)
    puts "#{@name} deals #{target.name} #{attack_value} damage with a hefty kick!"
    target.defend(attack_value)
  end
  
  def defend(damage)
    defend_value = rand(@block)
    damage_taken = damage - defend_value
    if damage_taken < 0
      damage_taken = 0
    end
    puts "#{@name} blocks #{defend_value} of the damage, only taking #{damage_taken} damage."
    # @hitpoints = @hitpoints - damage_taken
    @hitpoints -= damage_taken
    if @hitpoints < 1
      die
    end
  end
  
  def die
    puts "#{@name} staggers to ground, gasping its last breath. #{@name} is in a better place now."
    exit
  end
  
end

def fight(fighter_one, fighter_two)
  while fighter_one.hitpoints > 0 and fighter_two.hitpoints > 0
    fighter_one.high_attack(fighter_two)
    fighter_two.high_attack(fighter_one)
    fighter_one.low_attack(fighter_two)
    fighter_two.low_attack(fighter_one)
  end
end
