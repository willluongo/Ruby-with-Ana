class Game
  def initialize
    @secret_code = [rand(6+1), rand(6+1), rand(6+1), rand(6+1)]
    @guessed = []
  end
  def print
    puts "#{@secret_code[0]}#{@secret_code[1]}#{@secret_code[2]}#{@secret_code[3]}"
    puts @guessed
    puts "Done."
  end
  def prompt
    puts "What is your guess?"
    input = gets.chomp.downcase
    if input == "q"
      exit
    elsif check(input)
      puts "Your guess must be four digits, or you can press 'q' to quit."
      prompt
    end
    return input
  end
  def check(input)
    input.each_char do |char|
      if char.to_i > 6 or char.to_i < 1
        return true
      else
        return false
      end
    end
  end
  def menu
    # TODO: Add the menu
    puts "There will be a menu here."
  end
  def instructions
    # TODO: Add instructions
  end
  def go
    # TODO: Put game logic here
    guess = prompt
    # TODO: Do stuff to guess
  end
end

app = Game.new
app.prompt
app.print