# code your #valid_move? method here
def valid_move?(board, position)
  position.to_i.between?(1, 9) && !(position_taken?(board, position))
end

def position_taken?(board, position)
    position = position.to_i - 1
  unless board[position].nil?
    if (board[position].include? "X") || (board[position].include? "O")
      true
    else
      false
    end
  else false
  end
end
print valid_move?([" ", " ", " ", " ", " ", " ", " ", " ", " "], "1")
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
