require 'minitest/autorun'
require 'minitest/rg'

require_relative '../player'
require_relative '../dice'

class TestPlayer < MiniTest::Test

  def setup()
    @player = Player.new("John")
    @dice = Dice.new()
  end

  def test_has_a_name
    #arrange

    #act
    name = @player.name
    #assert
    assert_equal("John", name)
  end

  def test_player_initial_score()
    score = @player.last_score
    assert_equal(0, score)
  end

  def test_player_roll_dice()
    @player.roll(@dice)
    assert(@player.last_score >= 1111 && @player.last_score <= 6666)
  end
end
