# Tic tac toe - Ported to Ruby by Will and Ana
# Original code by Michael Dawson

def instructions()
  column_width=80
  puts "Welcome to the ultimate man vs. machine showdown:".center(column_width)
  puts "Tic-Tac-Toe".center(column_width)
  puts "The human brain is pitted agains this silicon processor!".center(column_width)
  puts "Make your move known by entering a number 0-8".center(column_width)
  puts
  puts "The number corresponds to the desired board position as illustrated below:".center(column_width)
  puts "-------------".center(column_width)
  puts "| 0 | 1 | 2 |".center(column_width)
  puts "|-----------|".center(column_width)
  puts "| 3 | 4 | 5 |".center(column_width)
  puts "|-----------|".center(column_width)
  puts "| 6 | 7 | 8 |".center(column_width)
  puts "-------------".center(column_width)
  puts
  puts "Prepare yourself human! The battle is about to begin!".center(column_width)
  puts
end

def askYesNo(question)
  response = gets.chomp.downcase
  puts question + " (y/n): "
  if response == 'y' || response == 'n'
    return response
  else
    puts "Please answer with a 'Y' or an 'N'!"
    askYesNo(question)
  end
end

def askNumber(question, high, low = 0)
  number = gets.chomp.to_i
  puts "#{question} (#{low}-#{high}): "
  if number > low && number < high
    return number
  else
    puts "Please select a number between #{low} and #{high}!"
    askNumber(question, high, low)
  end
end

def humanPiece()
  go_first = askYesNo("Do you require the first move?")
  if go_first == 'y'
    puts "Then take the first move! You will need it!!"
    return 'X'
  else
    puts "Your bravery will be your undoing... I will go first!"
    return 'O'
  end
end

def opponent(piece)
  if piece == 'X'
    return 'O'
  else
    return 'X'
  end
end

def displayBoard(board)
  column_width=80
  puts
  puts
  puts "#{board[0]} | #{board[1]} | #{board[2]}".center(column_width)
  puts "---------".center(column_width)
  puts "#{board[3]} | #{board[4]} | #{board[5]}".center(column_width)
  puts "---------".center(column_width)
  puts "#{board[6]} | #{board[7]} | #{board[8]}".center(column_width)
  puts
  puts
end

def winner(board)
  winning_rows = [[0,1,2],
                  [3,4,5],
                  [6,7,8],
                  [0,3,6],
                  [1,4,7],
                  [2,5,8],
                  [0,4,8],
                  [2,4,6]]
  total_rows = 8
  
  
  # Since the array index starts at 0, we actually only want the range 0-7, 
  # so we subtract 1 from the number of rows
  ## checks for winners
  (0..(total_rows-1)).each do |row|
    if ((board[winning_rows[row][0]] != ' ') && (board[winning_rows[row][0]] == board[winning_rows[row][1]]) && (board[winning_rows[row][1]] == board[winning_rows[row][2]]))
      return board[winning_rows[row][0]]
    end
  end
    
  # checks for ties
  if board.count(' ') == 0 
    return 'T'
  end
  
  return 'N'
end  

def isLegal(move, board)
  return board[move] == ' '
end

def humanMove(board, human)
  move = askNumber("Where will you move?", board.size)
  if !isLegal(move, board)
    puts "That square is already occupied, foolish human!"
    humanMove(board, human)
  else
    puts "Fine..."
    return move
  end
end
