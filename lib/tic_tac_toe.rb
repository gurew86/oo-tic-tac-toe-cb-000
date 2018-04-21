class TicTacToe
  def initialize(board = " ")
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  WIN_COMBINATIONS = [
    [0,1,2],  # top row
    [3,4,5],  # middle row
    [6,7,8],  # bottom row
    [0,4,8],  # diagonal top left - bottom right
    [6,4,2],  # diagonal bottom left - top right
    [0,3,6],  # left side down
    [1,4,7],  # middle down
    [2,5,8]   # right side down
    ] 
    
    def display_board(board)
      puts " #{board[0]} | #{board[1]} | #{board[2]} "
      puts "-----------"
      puts " #{board[3]} | #{board[4]} | #{board[5]} "
      puts "-----------"
      puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end
    
    def input_to_index(input) 
      input = input.to_i - 1 
    end
    
    def move(board, index, value)
      board[index] = value
    end
    
    def position_taken?(board, index)
      (board[index] != " " && board[index] != "" && board[index] != nil)
    end
    
    def valid_move?(board, index)
      index.between?(0,8) && !position_taken?(board, index)
    end
    
    
    
end