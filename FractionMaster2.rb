iscore = 0
cscore = 0
while true
  denom = rand(12)+1
  numer = rand(denom)+1
  whole = denom*(rand(12)+1)
  puts "Correct: #{cscore} Incorrect: #{iscore}"
  puts "Your total is #{whole}. You need #{numer}/#{denom}. How much do you need?"
  guess = gets.chomp.to_i
  system("clear")
  answer = (whole/denom)*numer
  if guess == answer 
    cscore = cscore+1
    puts "You are right!"
  else 
    iscore = iscore+1
    puts "Sorry. You suck. The correct answer was #{answer}"
  end
end