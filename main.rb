require './game_module'
require './player1'
require './player2'

#runs game
new_game = MathGame::Turn.new
new_game.start_game($player1_name, $player2_name)




