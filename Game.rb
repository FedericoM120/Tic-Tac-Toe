require 'pry-byebug'
require_relative 'player'
require_relative 'game_board'

def choice
  puts 'What is your name player one?'
  player_one_name = gets.chomp
  puts "#{player_one_name}'s icon is x"
  #player_one_icon = gets.chomp
  player_one = Player.new(player_one_name)
  puts 'what is your name player two'
  player_two_name = gets.chomp
  puts "#{player_two_name}'s icon is o"
  #player_two_icon = gets.chomp
  player_two = Player.new(player_two_name)
  
  puts "#{player_one_name} choose a spot on the board by entering a available number space 1 - 9"
    tic_board = GameBoard.new
    tic_board.make_board
    j = 1
    i = 2
    while j < 10
      if i.even?
        puts "#{player_one_name}'s turn"
        player_one_choice = gets.chomp
        until tic_board.choice_taken(player_one_choice)
          puts "choice is not available. #{player_one_name}     
          choose again"
          player_one_choice = gets.chomp
        end
        tic_board.update_board_p1(player_one_choice)
        tic_board.make_board
         if tic_board.winner_declared
           puts " #{player_one_name} wins"
          j += 20
        end
        i += 1
        j += 1
      elsif i.odd?
        puts "#{player_two_name}'s turn"
        player_two_choice = gets.chomp
        until tic_board.choice_taken(player_two_choice)
          puts "choice is not available"
          player_two_choice = gets.chomp
        end
        tic_board.update_board_p2(player_two_choice)
        tic_board.make_board
        if tic_board.winner_declared
           puts " #{player_two_name} wins"
          j += 20
        end
        i += 1
        j += 1
      end
    end
    if j > 10
      puts "would you like to play again? Type Y for yes or
      N for no"
      answer = gets.chomp
      while answer != 'Y' || answer != 'N'
        if answer == 'Y' || answer == 'N'
          break
        end
          puts "Try to follow directions. Type Y for yes or
          N for no"
          answer = gets.chomp
      end
      if answer == 'Y'
        choice
      else
        puts "Goodebye!"
      end
    end
  end
  
  puts "would you like to play Tic-Tac-Toe? Type Y for yes or
  N for no"
  answer = gets.chomp
  while answer != 'Y' || answer != 'N'
    if answer == 'Y' || answer == 'N'
      break
    end
      puts "Try to follow directions. Type Y for yes or
      N for no"
      answer = gets.chomp
  end
  if answer == 'Y'
    choice
  else
    puts "Goodebye!"
  end
