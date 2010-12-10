require "./AnasMathGame"
quit = false

until quit
  puts "\n\nType multiply for the multiplication quiz!\nType add for the addition quiz!\nWho knows what you would do to try subtraction or division?!\nIf you want to quit, please type quit. "
  respond = gets.chomp
  
  case respond
    when "quit"
      quit = true
    when "multiply"
      multiplication
    when "add"
      addition
    when "subtract"
      subtraction
    when "divide"
      division
    else
      puts "\nInvalid option, please try again!"
  end
    
end