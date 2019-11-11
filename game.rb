class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end
  def start
    puts "--------GAME START--------"
    while @player1.alive? && @player2.alive?
        turn(@player1)
        print_score
      if @player1.alive?
        turn(@player2)
        print_score
      end
    end
    winner = find_winner
    puts "\n--------GAME OVER--------\n #{winner.name} wins with a score of #{winner.lives}/3. \nGood Bye!"
  end

  def turn(current_player)
    puts "\n--------NEW TURN--------"
    question =  Question.new
    puts "#{current_player.name}: #{question.text}"
    player_answer = $stdin.gets.chomp
    if question.correct? player_answer
      puts '*** CORRECT ***'
    else 
      puts "WRONG"
      current_player.decrease_score
    end
  end

  def print_score
    puts "--CURRENT SCORE-- #{@player1.name}: #{@player1.lives}/3 vs. #{@player2.name}: #{@player2.lives}/3"
  end
  
  def find_winner
    if @player1.lives > @player2.lives
      winner = @player1
    else
      winner = @player2
    end

  end


end

