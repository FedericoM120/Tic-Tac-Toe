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
    case player_one_choice
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
  def choice
    j = 0
    while j < 10
      i = 2
      if i % 2 == 0
        player_one_choice = gets.chomp
        ticBoard.update_board_p1(player_one_choice)
        ticBoard.make_board
        i += 1
        j += 1
      else
        player_two_choice = gets.chomp
        ticBoard.update_board_p2(player_two_choice)
        ticBoard.make_board
        i += 1
        j += 1
      end
    end
  end
  player_one_choice = gets.chomp
  ticBoard.update_board_p1(player_one_choice)
  ticBoard.make_board
  
  player_two_choice = gets.chomp
  ticBoard.update_board_p2(player_two_choice)
  ticBoard.make_board
end
