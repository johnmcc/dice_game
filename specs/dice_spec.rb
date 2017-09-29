require 'minitest/autorun'
require 'minitest/rg'

require_relative '../dice'

class TestDice < MiniTest::Test

  def setup()
    @dice = Dice.new()
  end

  def test_roll()
    #act
    result = @dice.roll()
    #assert
    assert_equal(4, result.length())
  end

  def test_has_roll_has_integers()
    #act
    result = @dice.roll()

    #assert
    assert(Integer == result[0].class)
    assert(Integer == result[1].class)
    assert(Integer == result[2].class)
    assert(Integer == result[3].class)
  end

  def test_roll_to_score()
    #arrange
    roll = [3, 5, 2, 6]

    #act
    result =  @dice.roll_to_score(roll)

    #assert
    assert_equal(6532, result)
  end
end
