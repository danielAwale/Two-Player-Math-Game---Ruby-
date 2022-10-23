class Question
  attr_accessor :num1, :num2, :answer

  def initialize (num1, num2, answer)
    @num1 = num1
    @num2 = num2
    @answer = answer
  end

  def ask_question
    "what is #{num1} + #{num2}?"
  end

  def right_answer
    num1 + num2
  end

end

class Person 
  attr_accessor :name, :lives

  def initialize(name, lives=3)
    @name = name
    @lives = 3
  end

end

player1 = Person.new("Player 1")
player2 = Person.new("Player 2")

while 