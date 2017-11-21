require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game.rb')

class TestGame < MiniTest::Test

  def setup
    @game1 = Game.new("scissors", "rock")
    @game2 = Game.new("scissors", "paper")
    @game3 = Game.new("rock", "paper")
    @game4 = Game.new("rock", "scissors")
    @game5 = Game.new("paper", "scissors")
    @game6 = Game.new("paper", "rock")
  end

  def test_compare
    assert_equal("rock wins", @game1.compare)
    assert_equal("scissors wins", @game2.compare)
    assert_equal("paper wins", @game3.compare)
    assert_equal("rock wins", @game4.compare)
    assert_equal("scissors wins", @game5.compare)
    assert_equal("paper wins", @game6.compare)
  end

end
