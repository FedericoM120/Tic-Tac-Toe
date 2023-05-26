# class meant to initialize game and render it playable
class Game
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
end

