class Player
	attr_reader :name
	attr_accessor :gold, :weapon
	def initialize(name, hitpoints, weapon, armor, level, gold)
		@name = name
		@hitpoints = hitpoints
		@weapon = weapon
		@armor = armor
		@level = level
		@gold = gold
	end
end

@weapon = ["nothing", "rusty dagger", "dagger", "sharp dagger", "rusty sword", "sword", "sharp sword", "rusty axe", "axe", "sharp axe"]
@armor = ["nothing", "hannah montannah t-shirt", "leather coat", "chain mail vest"]
@monsters = [rat = Player.new("Rat", 5, 0, 0, 1, 10), wolf = Player.new("Wolf", 10, 0, 0, 1, 15)]



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
	puts "A dark dark place..."
	monster = @monsters[rand(@monsters.length)]
	puts monster.name
	menu
end

def weapons
	puts "You step into the weapons shop, carrying your #{@weapon[@player.weapon]} high."
	@weapon.each_with_index do |weapon_name, weapon_number|
		puts "#{weapon_number}) #{weapon_name}: #{weapon_number * 10} gold"
	end
	puts "You have #{@player.gold} gold."
	puts "What would you like to buy, #{@player.name}?"
	choice = gets.chomp.to_i
	if choice * 10 <= @player.gold
		@player.weapon = choice
		@player.gold = @player.gold - choice * 10
		puts "You are now using a #{@weapon[choice]} as your weapon. Scary stuff!"
	else
		puts "I am sorry, you don't have enough gold. The #{@weapon[choice]} costs #{choice * 10} gold, and you are #{choice * 10 - @player.gold} gold short."
	end
	menu
end

def armor
	puts "You are in an armor shop."
	menu
end

def inn
	puts "You are in a warm and cozy inn."
	menu
end

getname
menu