# The main CodeBreaker game class
class Game
  # Picks the new code for the player to guess, initiallizes instance variables
  def initialize
    @secret_code = [rand(6)+1, rand(6)+1, rand(6)+1, rand(6)+1]
    @guessed = []
    @guesses = 0
    @winner = false
    @loser = false
  end
  
  # Primarily for debugging, shows actual code, shows the player's guess.
  def print
    puts "#{@secret_code[0]}#{@secret_code[1]}#{@secret_code[2]}#{@secret_code[3]}"
    puts @guessed
    puts "Done."
  end
  
  # Prompts player for their guess
  # If input is q, exits the game
  # Checks for input validity
  # If input is valid, returns the user's input
  def prompt
    puts "What is your guess?"
    input = gets.chomp.downcase
    if input == "q"
      exit
    elsif valid_check(input)
      puts "Your guess must be four digits 1-6, or you can press 'q' to quit."
      prompt
    end
    return input
  end
  
  # Checks to see if the player input is invalid, if so returns true
  def valid_check(input)
    unless input.length == 4
      return true
    else
      input.each_char do |char|
        unless (1..6).include?(char.to_i)
          return true
        end
      end
      return false
    end
  end
  
  # Check the guess against the code, return White and Red Pegs
  def guess_check(guess, code = @secret_code)
    
    
    # This is what we will put in the @guessed array
    super_guess = guess + " "
    
    # convert guess to an index
    guess = [guess[0].to_i, guess[1].to_i, guess[2].to_i, guess[3].to_i]
    puts "#{guess} #{@secret_code}"
    if guess == code
      @winner = true
    else
      @guesses = @guesses + 1
      if @guesses == 10
        @loser = true
      end
    end
    # @secret_code.each_with_index do |yes_piece, index|
    #   if guess[index].to_i == yes_piece
    #     guess[index] = "0"
    #     super_guess = super_guess + "R"
    #   end     
    # end
    guess.each_with_index do |guess_piece, guess_index|
      code.each_with_index do |yes_piece, yes_index|
        puts "#{guess_piece}:#{yes_piece} #{yes_index}:#{guess_index}"
        puts "#{guess.join}"
        if guess_piece == yes_piece && guess_index == yes_index
          guess[guess_index] = "0"
          super_guess = super_guess + "R"
          puts "Adding R"
        end
        if guess_piece == yes_piece && guess_index != yes_index
          guess[guess_index] = "0"
          super_guess = super_guess + "W"
          puts "Adding W"
        end
      end
    end
    

      
    @guessed.push super_guess
  end
    
  
  # Displays the menu and prompts the player for their choice
  def menu
    # TODO: Add the menu
    puts "There will be a menu here."
  end
  
  # Displays the instructions
  def instructions
    # TODO: Add instructions
  end
  
  # This is the main application block, call it on the game object you create to start the game
  # All of the game logic is here
  def go
    # TODO: Put game logic here
    until @winner or @loser
      puts @guessed
      guess_check(prompt)
    end
    # TODO: Do stuff to guess
    print
  end
end

if __FILE__ == $0
  app = Game.new
  app.go
end