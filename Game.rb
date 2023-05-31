require 'pry-byebug'
require_relative 'player'
require_relative 'game_board'

puts 'What is your name player one?'
player_one_name = gets.chomp
puts 'What is your game icon? Choose either x or o'
player_one_icon = gets.chomp
player_one = Player.new(player_one_name, player_one_icon)
puts 'what is your name player two'
player_two_name = gets.chomp
puts 'What is your game icon? Choose either x or o'
player_two_icon = gets.chomp
player_two = Player.new(player_two_name, player_two_icon)

puts 'player one choose a spot on the board by entering a available number space 1 - 9'

# player now makes a choice and the choice is displayed on the screen
def choice
  tic_board = GameBoard.new
  tic_board.make_board
  j = 1
  i = 2
  while j < 10
    if i.even?
      puts "#{player_one_name}'s turn"
      player_one_choice = gets.chomp
      tic_board.choice_taken(player_one_choice);
      tic_board.update_board_p1(player_one_choice)
      tic_board.make_board
      i += 1
      j += 1
      puts i
      puts j
    elsif i.odd?
      puts 'player two choice'
      player_two_choice = gets.chomp
      tic_board.update_board_p2(player_two_choice)
      tic_board.make_board
      i += 1
      j += 1
    end
  end
end
