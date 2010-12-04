def prompt_player(requested)
  puts "Please give me a #{requested}."
  return gets.chomp
end

first_string = prompt_player("verb")

second_string = prompt_player("place")

third_string = prompt_player("name")

fourth_string = prompt_player("noun")

fifth_string = prompt_player("body part")

sixth_string = prompt_player("adjective")

seventh_string = prompt_player("place")

eighth_string = prompt_player("game title")

ninth_string = prompt_player("any time of day")

# When we are done asking all questions we through all the player answers together and make it a short story.
puts "One time while I was #{first_string} to #{second_string}, I saw my friend #{third_string}. S/he was holding a #{fourth_string} in their #{fifth_string}.It was so #{sixth_string}! We ran to #{seventh_string} and played #{eighth_string} until #{ninth_string}."