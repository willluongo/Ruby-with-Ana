def ask(question)
  puts question
  answer = gets.chomp.downcase
  if answer == "yes"
    return true
  elsif answer == "no"
    return false
  else
    puts "Please answer 'yes' or 'no'."
    ask(question)
  end
end

if ask("Are you Ana?")
  puts "Hi Ana!"
else
  puts "GO AWAY YOU."
end