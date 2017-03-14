require './question.rb'
require './player.rb'
require './game.rb'
require './turn.rb'

if $0 == __FILE__
  MathGame::Game.new(2).start
end
