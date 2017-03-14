module MathGame

  class Game

    def initialize(num_players)
      @players = []
      num_players.times do |num|
        @players.push(Player.new(num + 1))
      end
      @current_player = @players[0]
    end

    def start
      puts '----- START GAME -----'
      play_turn
      while (@players.all? { |player| player.is_alive})
        puts '----- NEXT TURN -----'
        play_turn
      end
      end_game
    end

    def play_turn
      @players.each { |player| player.print_lives }
      print "#{@current_player}: "
      turn = Turn.new
      puts turn.question
      turn.get_answer
      unless turn.evaluate_answer
        puts 'NO'
        @current_player.decrease_life
      end
      switch_current_player
    end

    def switch_current_player
      i = @players.index(@current_player)
      i += 1
      i = i % @players.length
      @current_player = @players[i]
    end

    def end_game
      puts "----- GAME OVER -----"
      @players.each { |player| if player.is_alive then puts "#{player} won the game" end }
    end

  end

end