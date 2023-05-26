require 'pry-byebug'

class GameBoard
  def initialize
    @board = Array.new(3, ' ') { Array.new(3, 'x') }
  end

  def make_board
    @board.each do |r|
      puts r.join(' ')
    end
  end

  def update_board(player_choice)
    if player_choice == 1
      @board[0][0] = x
    end
  end
end
