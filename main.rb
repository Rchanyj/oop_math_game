require './game_module'
require './player1'
require './player2'

#runs game

new_game = MathGame::Turn.new
#new_game.start_game($player1_name, $player2_name)
puts "Player 1, enter your name!"
$player1 = gets.chomp
puts "Player 2, enter your name!"
$player2 = gets.chomp

new_game.start_game($player1, $player2)





