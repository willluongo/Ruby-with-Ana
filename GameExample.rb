class Player
	attr_reader :name, :level
	attr_accessor :gold, :weapon, :armor, :hitpoints
	def initialize(name, hitpoints, weapon, armor, level, gold)
		@name = name
		@hitpoints = hitpoints
		@weapon = weapon
		@armor = armor
		@level = level
		@gold = gold
	end
	
	def attack(target)
		target.defend(rand((@weapon + 1)*6), self)
	end
	def defend(damage, attacker)
		if @armor != 0
		  block = rand(@armor * 4)
	  else
	    block = 0
    end
    
    total = damage - block
    if total <= 0
      total = 0
    end
    if block > 0
      puts "The #{attacker.name} attacks #{self.name} for #{damage} with a #{$weapons[attacker.weapon]}, but #{self.name} blocks for #{block}, resulting in #{total} damage."
    else
      puts "The #{attacker.name} attacks #{self.name} for #{damage} with a #{$weapons[attacker.weapon]}, resulting in #{total} damage."
    end
		@hitpoints = @hitpoints - total
		if @hitpoints <= 0
		  die
	  end
	end
	
	def die
	  puts "The #{@name} falls dramatically to its death on the hard forest floor."
  end
end

$weapons = ["nothing", "rusty dagger", "dagger", "sharp dagger", "rusty sword", "sword", "sharp sword", "rusty axe", "axe", "sharp axe"]
$armors = ["nothing", "hannah montannah t-shirt", "leather coat", "chain mail vest"]
$monsters = [Player.new("Rat", 5, 0, 0, 1, 10), Player.new("Wolf", 10, 0, 0, 1, 15), Player.new("Mummy", 15, 0, 0, 1, 20), Player.new("Skeleton Warrior", 20, 1, 1, 2, 25), Player.new("Forest Troll", 30, 2, 3, 2, 40)]


def getname
	puts "Greetings traveler. What is your name?"
	name = gets.chomp
	puts "#{name}, eh? That's a strange name, are you sure?(Y/n)"
	choice = gets.chomp
	if choice == "n"
		getname
	end
	@player = Player.new(name, 20, 0, 0, 1, 20)
end



def menu
  puts "You have #{@player.gold} gold."
	puts "1) Go into the forest to fight."
	puts "2) Go to the weapon shop"
	puts "3) Go to the armor shop"
	puts "4) Go to the INN"
	puts "5) Quit the game"
	choice = gets.chomp.to_i
	case choice
	when 1
		forest
	when 2
		weapons
	when 3
		armor
	when 4
		inn
	when 5
		exit
	else
		menu
	end
end

def forest
  stop = false
  monster = $monsters[rand($monsters.length)].clone
	until stop
	  puts "A #{monster.name} lurches toward you."
	  puts "You have #{@player.hitpoints} hitpoints."
	  puts "What do you do?"
    puts "1) Attack #{monster.name}"
    puts "2) Run back to town"
    choice = gets.chomp.to_i
    case choice
    when 1
      @player.attack(monster)
      if monster.hitpoints > 0
        monster.attack(@player)
        if @player.hitpoints <= 0
          puts "Game over."
          exit
        end
      else
        puts "You stand over #{monster.name} in triumph, and pick up #{monster.gold} gold pieces from the body!"
        @player.gold += monster.gold
        stop = true 
      end
    when 2
      stop = true
    end
  end
  menu
end

def weapons
	puts "You step into the weapon shop, carrying your #{$weapons[@player.weapon]} high."
	$weapons.each_with_index do |weapon_name, weapon_number|
		puts "#{weapon_number}) #{weapon_name}: #{weapon_number * 10} gold"
	end
	puts "You have #{@player.gold} gold, and I will give you #{@player.weapon * 5} gold for your crummy old #{$weapons[@player.weapon]}."
	puts "What would you like to buy, #{@player.name}?"
	choice = gets.chomp.to_i
	if choice * 10 <= @player.gold + @player.weapon * 5
	  @player.gold += @player.weapon * 5
		@player.weapon = choice
		@player.gold = @player.gold - choice * 10
		puts "You are now using a #{$weapons[choice]} as your weapon. Scary stuff!"
	else
		puts "I am sorry, you don't have enough gold. The #{$weapons[choice]} costs #{choice * 10} gold, and you are #{choice * 10 - @player.gold} gold short."
	end
	menu
end

def armor
	puts "You step into the armor shop, wearing your #{$armors[@player.armor]} proudly."
	$armors.each_with_index do |armor_name, armor_number|
	  puts "#{armor_number}) #{armor_name}: #{armor_number * 10} gold"
  end
  puts "You have #{@player.gold} gold."
	puts "What would you like to buy, #{@player.name}?"
	choice = gets.chomp.to_i
	if choice * 10 <= @player.gold
		@player.armor = choice
		@player.gold = @player.gold - choice * 10
		puts "You are now protected by #{$armors[choice]}. Don't you feel invincible?"
  else
  	puts "I am sorry, you don't have enough gold. The #{$armors[choice]} costs #{choice * 10} gold, and you are #{choice * 10 - @player.gold} gold short."
  end
	menu
end

def inn
	puts "You are in a warm and cozy inn."
	missing_hitpoints = @player.level * 20 - @player.hitpoints
	puts "It will be #{missing_hitpoints} gold to stay. Are you interested?(y/N)"
	choice = gets.chomp
  if choice == "y"
    if @player.gold > missing_hitpoints
      @player.hitpoints = @player.level * 20
      puts "You leave the Inn, feeling refreshed with a full #{@player.hitpoints} hitpoints, but a wallet #{missing_hitpoints} gold lighter!"
      @player.gold -= missing_hitpoints
    else
      "I'm sorry, you are #{missing_hitpoints - @player.gold} gold short."
    end
  end
  menu
	
end


getname
menu