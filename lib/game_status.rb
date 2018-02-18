# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      did_win = true
      return win_combination # return the win_combination indexes that won.
    else
      if win_combination == [2,4,6]

        #false for empty board
        if board.detect{|i| i == "X"}

          #check for a draw
          if full?(board) == true
            true
          else
            false
          end

        elsif board.detect{|i| i == "O"}

          #check for a draw
          if full?(board) == true
            true
          else
            false
          end

        else
          false
        end

        puts "last win combo test"
      end

      puts "false section- win?"
    end
  end
end


def full?(board)
  if board.detect{|i| i == " "}
    false
  elsif board.detect{|i| i == ""}
    false
  else
    true
  end
end

def draw?(board)
  puts full?(board)
  puts won?(board)
  if full?(board) == true
    puts "now testing won?=false"
    if won?(board) == false
      puts "true section"
    end
    puts "draw? section, full=true, won=false"
  else
    puts "false section"
  end
#returns true if the board has not been won and is full
#false if the board is not won and the board is not full
#false if the board is won.

end
