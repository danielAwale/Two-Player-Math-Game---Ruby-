class Question
  attr_accessor :num1, :num2

  def initialize (num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def ask_question
    "what is #{num1} + #{num2}?"
  end

  def right_answer
    num1.to_i + num2.to_i
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

puts "Let the game begin!"

choose_player = 0

while player1.lives != 0 and player2.lives != 0
  player = (choose_player == 0) ? player1 : player2
  question = Question.new(rand(0..10), rand(0..10))
  puts "#{player.name} : #{question.ask_question}"
  answer = gets.chomp.to_i
  if answer != question.right_answer
    puts "Seriously! No!"
    player.lives -=1
    puts "P1: #{player1.lives} / 3 vs P2: #{player2.lives} / 3"
  else 
    puts "Yes! You are correct!!"
    puts "P1: #{player1.lives} / 3 vs P2: #{player2.lives} / 3"
  end
  choose_player = (choose_player + 1) % 2
end

if player1.lives == 0 
  puts "Player 2 wins the game"
  puts "==== GAME OVER ===="
elsif player2.lives == 0
  puts "Player 1 wins the game"
  puts "==== GAME OVER ===="
end
