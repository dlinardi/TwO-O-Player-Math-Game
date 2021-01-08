class Question
  attr_reader :rand_1, :rand_2, :question, :answer

  def initialize
    @rand_1 = rand(1..20)
    @rand_2 = rand(1..20)
    @question = "What does #{rand_1} plus #{rand_2} equal?"
    @answer = rand_1 + rand_2
  end

  def correct
    "YES! You are correct."
  end

  def incorrect
    "Seriously? No!"
  end
end