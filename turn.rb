  def Turn(current_player)
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