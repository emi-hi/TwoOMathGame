class Question
  def initialize
    @num1 = (rand * 20).round + 1
    @num2 = (rand * 20).round + 1
    @answer = @num1 + @num2
  end

  def text
    "what does #{@num1} + #{@num2} equal?"
  end

  def correct? (proposed_answer)
    @answer.to_i == proposed_answer.to_i
  end

end

