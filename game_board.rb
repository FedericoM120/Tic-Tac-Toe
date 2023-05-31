require 'pry-byebug'
require_relative 'player'
class GameBoard
  attr_accessor :board

  def initialize
    e = 0
    @board = Array.new(3) { Array.new(3) { e += 1 } }
  end

  def make_board
    @board.each do |r|
      puts r.join(' ')
    end
  end

  def update_board_p1(player_choice)
    case player_choice
    when '1'
      @board[0][0] = 'x'
    when '2'
      @board[0][1] = 'x'
    when '3'
      @board[0][2] = 'x'
    when '4'
      @board[1][0] = 'x'
    when '5'
      @board[1][1] = 'x'
    when '6'
      @board[1][2] = 'x'
    when '7'
      @board[2][0] = 'x'
    when '8'
      @board[2][1] = 'x'
    when '9'
      @board[2][2] = 'x'
    end
  end

  def update_board_p2(player_choice)
    case player_choice
    when '1'
      @board[0][0] = 'o'
    when '2'
      @board[0][1] = 'o'
    when '3'
      @board[0][2] = 'o'
    when '4'
      @board[1][0] = 'o'
    when '5'
      @board[1][1] = 'o'
    when '6'
      @board[1][2] = 'o'
    when '7'
      @board[2][0] = 'o'
    when '8'
      @board[2][1] = 'o'
    when '9'
      @board[2][2] = 'o'
    end
  end

  def choice_taken(player_choice)
    choice_is_taken = true;
    while (choice_is_taken)
      case player_choice
      when '1'
        if @board[0][0] == 'o' || @board[0][0] == 'x'
          puts "spot 1 taken"
        end
      when '2'
        if @board[0][1] == 'o' || @board[0][1] == 'x'
          puts "spot 1 taken"
        end
      else
        choice_is_taken = false
      end
      binding.pry
    end
  end

end
