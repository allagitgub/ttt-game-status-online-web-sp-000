# Helper Method
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    (board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X") ||
    (board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O")
 end
end

def full?(board)
  board.select{ |item| item != " " && !item.nil? && item != ""}.size == 9
end

def draw?(board)
  if(won?(board) || !full?(board))
    return false
  elsif
    return true
end

board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
value = won?([" "," "," "," "," "," "," "," "," "])
value1 = full?([" "," "," "," "," "," "," "," "," "])
value2 = draw?()
#value1 = full?([" "," "," "," "," "," "," "," "," "])
puts "value #{value2}"


# Define your WIN_COMBINATIONS constant
