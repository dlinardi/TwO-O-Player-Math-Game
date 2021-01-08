require './game'
require './player'
require './question'

def show_stats
  puts "#{@player_1.stats} vs. #{@player_2.stats}"
end

def game_over?
  return true if @player_1.lives.positive? || @player_2.lives.positive?
end

@player_1 = Player.new('Player 1')
@player_2 = Player.new('Player 2')

current_player = @player_1

show_stats

game = Game.new

while game_over?
  game.round(current_player)

  show_stats

  if @player_1.lives.zero? || @player_2.lives.zero?
    if @player_1.lives.zero? 
      current_player = @player_2
    else
      current_player = @player_1
    end
    break
  end

  if current_player == @player_1
    current_player = @player_2
  else
    current_player = @player_1
  end

  puts '----- NEW TURN -----'
end

puts "#{current_player.name} wins with a score of #{current_player.lives}/3"
puts '----- GAME OVER -----'
puts 'Good bye!'