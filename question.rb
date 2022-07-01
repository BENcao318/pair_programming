class Question
  attr_accessor :question
  attr_accessor :answer

  def initialize
    @question = ""
    @answer = nil
  end

  def generate_question
    num1 = rand(1...20)
    num2 = rand(1...20)
    @question = "What does #{num1} plus #{num2} equal?"
    @answer = num1 + num2
  end
end