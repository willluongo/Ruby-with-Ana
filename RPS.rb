def fingers
  case rand(3)
  when 0
    return "rock"
  when 1
    return "paper"
  when 2
    return "scissors"
  end
end

class Player
  attr_accessor :score
  def initialize(name)
    @name = name
    @score = 0
  end
  
  def name
    return @name
  end  
end

def menu
  puts "1) Rock"
  puts "2) Paper"
  puts "3) Scissors"
  puts "4) Quit the game"
  @player_choice = gets.chomp.to_i
  @computer_choice = fingers
  if @player_choice == 4
    puts "Your final score is #{@player.score}. Good bye!"
    exit
  end
  choices = ["rock", "paper", "scissors"]
  @player_choice = choices[@player_choice - 1]
  if @player_choice == @computer_choice
    puts "The computer also picked #{@player_choice}. It's a tie, so your score stays at #{@player.score}."
  end
  
  if (@player_choice == "rock" and @computer_choice == "paper") or (@player_choice == "paper" and @computer_choice == "scissors") or (@player_choice == "scissors" and @computer_choice == "rock")
    lose
  end
  
  if (@player_choice == "scissors" and @computer_choice == "paper")
    @player.score = @player.score + 1
    puts "The computer picks #{@computer_choice} and you win! Your score goes up by one and is now #{@player.score}!"
  end
  
  if @player_choice == "rock" and @computer_choice == "scissors"
    @player.score = @player.score + 1
    puts "The computer picks #{@computer_choice} and you win! Your score goes up by one and is now #{@player.score}!"
  end
  
  if @player_choice == "paper" and @computer_choice == "rock"
    @player.score = @player.score + 1
    puts "The computer picks #{@computer_choice} and you win! Your score goes up by one and is now #{@player.score}!"
  end
  menu
end

def lose
  @player.score = @player.score - 1
  puts "The computer picks paper and wins! Your score goes down by one and is now #{@player.score}."
end

puts "Welcome to intergalactic rock paper scissors. What is your name, earthling?"
@player = Player.new(gets.chomp)
menu