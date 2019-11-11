class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end
  def start
    puts "--------GAME START--------"
    while @player1.alive? && @player2.alive?
        Turn(@player1)
        print_score
      if @player1.alive?
        Turn(@player2)
        print_score
      end
    end
    winner = find_winner
    puts "\n--------GAME OVER--------\n #{winner.name} wins with a score of #{winner.lives}/3. \nGood Bye!"
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

