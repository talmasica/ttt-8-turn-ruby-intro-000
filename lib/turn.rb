def turn
  puts "Please enter 1-9:"
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[input_to_index] = current_player
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0 ,8) && position_taken?(board, index) == false ? true : false
  end
end

def position_taken?(board, index)
  if board(index) == "X" || board(index) == "O"
    return true
  else board(index) == "" || board(index) == " "|| board(index) == "nil"
    return false
  end
end
