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
ticBoard = GameBoard.new()
ticBoard.make_board()
# player now makes a choice and the choice is displayed on the screen
player_one_choice = gets.chomp
ticBoard.update_board(player_one_choice)
ticBoard.make_board