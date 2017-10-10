require 'minitest'
require 'rg'
require_relative 'models/game.rb'


class GameTest < MiniTest::Test

  def setup()
    game = Game.new()
  end

  def test_compare()
  expected = 'your opponent'
  assert_equal(expected, game.compare('rock', 'paper'))
  end

end
