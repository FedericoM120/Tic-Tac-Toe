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
      case player_choice
      when '1'
        if @board[0][0] == 'o' || @board[0][0] == 'x'
          puts "spot 1 taken"
          return false
        else
          return true
        end
      when '2'
        if @board[0][1] == 'o' || @board[0][1] == 'x'
          puts "spot 2 taken"
          return false
        else
          return true
        end
      when '3'
        if @board[0][2] == 'o' || @board[0][2] == 'x'
          puts "spot 2 taken"
          return false
        else
          return true
        end
      when '4'
        if @board[1][0] == 'o' || @board[1][0] == 'x'
          puts "spot 2 taken"
          return false
        else
          return true
        end
      when '5'
        if @board[1][1] == 'o' || @board[1][1] == 'x'
          puts "spot 2 taken"
          return false
        else
          return true
        end
      when '6'
        if @board[1][2] == 'o' || @board[1][2] == 'x'
          puts "spot 2 taken"
          return false
        else
          return true
        end
      when '7'
        if @board[2][0] == 'o' || @board[2][0] == 'x'
          puts "spot 2 taken"
          return false
        else
          return true
        end
      when '8'
        if @board[2][1] == 'o' || @board[2][1] == 'x'
          puts "spot 2 taken"
          return false
        else
          return true
        end
      when '9'
        if @board[2][2] == 'o' || @board[2][2] == 'x'
          puts "spot 2 taken"
          return false
        else
          return true
        end
      end
    end

    def winner_declared
      if (@board[0][0] == 'x'&& @board[0][1] == 'x' && @board[0][2] == 'x') || (@board[0][0] == 'o'&& @board[0][1] == 'o' && @board[0][2] == 'o')
        return true
      elsif (@board[1][0] == 'x'&& @board[1][1] == 'x' && @board[1][2] == 'x') || (@board[1][0] == 'o'&& @board[1][1] == 'o' && @board[1][2] == 'o')
        return true
      elsif (@board[2][0] == 'x'&& @board[2][1] == 'x' && @board[2][2] == 'x') || (@board[2][0] == 'o'&& @board[2][1] == 'o' && @board[2][2] == 'o')
        return true
      elsif (@board[0][0] == 'x' && @board[1][0] == 'x' && @board[2][0] == 'x') || (@board[0][0] == 'o' && @board[1][0] == 'o' && @board[2][0] == 'o')
        return true
      elsif (@board[0][1] == 'x' && @board[1][1] == 'x' && @board[2][1] == 'x') || (@board[0][1] == 'o' && @board[1][1] == 'o' && @board[2][1] == 'o')
        return true
      elsif (@board[0][2] == 'x' && @board[1][2] == 'x' && @board[2][2] == 'x') || (@board[0][2] == 'o' && @board[1][2] == 'o' && @board[2][2] == 'o')
        return true
      elsif (@board[0][0] == 'x' && @board[1][1] == 'x' && @board[2][2] == 'x') || (@board[0][0] == 'o' && @board[1][1] == 'o' && @board[2][2] == 'o')
        return true
      elseif (@board[0][2] == 'x' && @board[1][1] == 'x' && @board[2][0] == 'x') || (@board[0][2] == 'o' && @board[1][1] == 'o' && @board[2][0] == 'o')
      return true
    end
end
