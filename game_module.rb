module MathGame

  class Player
    attr_accessor :name
  end

  class Turn

    def start_game(player1, player2)
      #Stop loop when ONE player's life hits 0.
      #while player.lives > 0, continue
      player1_lives = 3
      player2_lives = 3
      player1_name = player1
      player2_name = player2

      puts "----LET'S DO THIS!----"
      while player1_lives > 0 && player2_lives > 0
        number1 = rand(1..20)
        number2 = rand(1..20)
        puts "#{player1_name}: #{number1} plus #{number2} equals?"
        answer = gets.chomp.to_i
        if (number1 + number2) == answer
          puts "#{player1_name}: Correct! You've survived another round!"
          puts "#{player1_name}: #{player1_lives}/3 vs #{player2_name}: #{player2_lives}/3"
          puts "----NEW TURN----"
        else
          player1_lives -= 1
          puts "#{player1_name}: Uh oh. Never lucky."
          puts "#{player1_name}: #{player1_lives}/3 vs #{player2_name}: #{player2_lives}/3"
          if player1_lives > 0
            puts "----NEW TURN----"
          end
        end
        if player1_lives == 0
          next
        end

        puts "#{player2_name}: #{number1} plus #{number2} equals?"
        answer = gets.chomp.to_i
        if (number1 + number2) == answer
          puts "#{player2_name}: Correct! You've survived another round!"
          puts "#{player1_name}: #{player1_lives}/3 vs #{player2_name}: #{player2_lives}/3"
          puts "----NEW TURN----"
        else
          player2_lives -= 1
          puts "#{player2_name}: Uh oh. Never lucky."
          puts "#{player1_name}: #{player1_lives}/3 vs #{player2_name}: #{player2_lives}/3"
          if player2_lives > 0
            puts "----NEW TURN----"
          end
        end
      end
      if player1_lives == 0
        puts "#{player2_name} wins with a score of #{player2_lives}/3!"
      else
        puts "#{player1_name} wins with a score of #{player1_lives}/3!"
      end
      puts "----GAME OVER----"
    end

  end

end