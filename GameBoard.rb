require 'pry-byebug'

class GameBoard
  def initialize
    @board = Array.new(3, ' ') { Array.new(3, 'x') }
  end

  def make_board
    @board.each do |r|
      puts r.join(' ')
    end
    binding.pry
  end
end
