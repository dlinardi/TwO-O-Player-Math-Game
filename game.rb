require './player'
require './question'

class Game

  def round(current_player)
    question = Question.new

    puts @question = "#{current_player.name}: #{question.question}"
    answer = gets.chomp.to_i

    if answer == question.answer
      puts "#{current_player.name}: #{question.correct}"
    else 
      puts "#{current_player.name}: #{question.incorrect}"
      current_player.lives -= 1
    end
  end
  
end