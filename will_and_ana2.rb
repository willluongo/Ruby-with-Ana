# Tic tac toe - Ported to Ruby by Will and Ana
# Original code by Michael Dawson

X = 'X'
O = 'O'
EMPTY = " "
TIE = 'T'
NO_ONE = 'N'
BEST_MOVES = 4,0,2,6,8,1,3,5,7



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
  puts question + " (y/n): "
  response = gets.chomp.downcase
  if response == 'y' || response == 'n'
    return response
  else
    puts "Please answer with a 'Y' or an 'N'!"
    askYesNo(question)
  end
end

def askNumber(question, high, low = 0)
  puts "#{question} (#{low}-#{high}): "
  number = gets.chomp.to_i
  if number >= low && number <= high
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
    return X
  else
    puts "Your bravery will be your undoing... I will go first!"
    return O
  end
end

def opponent(piece)
  if piece == X
    return O
  else
    return X
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
  (0...total_rows).each do |row|
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
  move = askNumber("Where will you move?", board.size - 1)
  if !isLegal(move, board)
    puts "That square is already occupied, foolish human!"
    humanMove(board, human)
  else
    puts "Fine..."
    return move
  end
end

def computerMove(board, computer)
  total_rows = 8
  (0...total_rows).each do |move|
    if isLegal(move, board)
      board[move] = computer
      if winner(board) == computer
        puts "I will take the winning move #{move}."
        return move
      else
        board[move] = ' '
      end
    end
  end
  
  (0...total_rows).each do |move|
    human = opponent(computer)
    if isLegal(move, board)
      board[move] = human
      if winner(board) == human
        puts "I see what you are doing there, human... I'll take #{move}."
        return move
      else
        board[move] = ' '
      end
    end
  end
  
  BEST_MOVES.each do |move|
    if isLegal(move, board)
      puts "After much careful deliberation, I shall take... #{move}."
      return move
    end
  end
end

def announceWinner(winner, computer, human)
  
  if winner == computer
    puts "#{winner.upcase}s WIN!"
    puts "As I was predicting, human... I am triumphant once more!"
    puts "Which is proof... proof that computers are superior to humans in all regards!"
  elsif winner == human
    puts "#{winner.upcase}s WIN!"
    puts "No... NO!! This cannot... be... somehow you've tricked me... or cheated..."
    puts "This will not happen again... I swear it on my mother's dead hard drive, rest her data."
  else
    puts "It is a tie!"
    puts "You are most lucky, human... somehow you've managed a tie."
    puts "Celebrate... for this is the best you can ever hope for."
  end
end

NUM_SQUARES = 9
board = []
(0...9).each do |index|
  board[index] = EMPTY
end
instructions()
human = humanPiece()
computer = opponent(human)
turn = X
displayBoard(board)

while winner(board) == NO_ONE
  if turn == human
    move = humanMove(board, human)
    board[move] = human
  else
    move = computerMove(board, computer)
    board[move] = computer
  end
  displayBoard(board)
  turn = opponent(turn)
end
announceWinner(winner(board), computer, human)
    