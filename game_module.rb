module MathGame

  class Player
    attr_accessor :name

  #  @@lives = 3
  #  def lives
  #    @@lives
  #  end

  end

  class Turn

    def start_game(player1, player2)
      #Stop loop when ONE player's life hits 0.
      #while player.lives > 0, continue
      player1_lives = 3
      player2_lives = 3
      puts "----LET'S DO THIS!----"
      while player_lives > 0
        MathGame.math_question(player1, player1_lives)
        MathGame.math_question(player2, player2_lives)
      end
      puts "----GAME OVER----"
    end

  end

  def MathGame.math_question(player, lives)

    player_lives = lives
    player_name = player.name
    number1 = rand(1..20)
    number2 = rand(1..20)
    puts "#{player_name}: #{number1} plus #{number2} equals?"
    answer = gets.chomp.to_i
    if (number1 + number2) == answer
      puts "#{player_name}: Correct! You've survived another round!"
      puts "#{player_name}: #{lives_remaining}/3"
      puts "----NEW TURN----"
    else
      lives_remaining -= 1
      puts "#{player_name}: Uh oh. Never lucky."
      puts "#{player_name}: #{lives_remaining}/3"
      if lives_remaining > 0
        puts "----NEW TURN----"
      end
    end
  end

end