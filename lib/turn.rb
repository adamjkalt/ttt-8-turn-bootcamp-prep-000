def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def valid_move?(board, index)
  if !index.between?(0,8)
    false
  else
    !position_taken?(board, index)
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  else board[index] == nil
    false
  end
end

def turn(board)
  user_input = gets.strip
  index = input_to_index(user_input)
  move(board, index)
  if valid_move?
    true
  else
    user_input = gets.strip
  turn = 0
  while turn < 10
    turn += 1
    puts "Please enter 1-9"
  end
end
end
