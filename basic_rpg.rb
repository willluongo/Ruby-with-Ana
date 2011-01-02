class Monster
  attr_accessor :hit_points
  def initialize(name, hit_points, attack_points)
    @name = name 
    @hit_points = hit_points 
    @attack_points = attack_points
    @death_messages = ["The #{@name} slowly falls to the ground, writhing in agony.", "You look in awe as the #{@name} bursts into flames, and the ashes fly away with the wind.", "The #{@name} beast falls to the ground with a thud and slowly dies in agony. #{@name} is in a better place.", "The #{@name} shrieks its last words, \"CURSE YOU!\", and dies.]
  end

  def attack(target)
    target.defend(rand(@attack_points))
  end 


  def defend(damage)
    @hit_points = @hit_points - damage
    puts "#{@name} suffered #{damage} damage, and has #{hit_points} hit points remaining."
    if @hit_points <= 0
      die
    end
  end 


  def die
    puts @death_messages[rand(@death_messages.length)]
  end

end



class Player < Monster
end

ana = Player.new("Ana", 20, 5)
will = Monster.new("Charred Chronomander", 25, 3)


until ana.hit_points <= 0 or will.hit_points <= 0
  ana.attack(will)
  will.attack(ana)
end