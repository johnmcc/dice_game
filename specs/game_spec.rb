require 'minitest/autorun'
require 'minitest/rg'

require_relative '../game'
require_relative '../player'
require_relative '../dice'

class TestGame < MiniTest::Test

  def setup
    @dice = Dice.new()

    @player1 = Player.new("John")
    @player2 = Player.new("Scott")
    players = [@player1, @player2]

    @game = Game.new(players, @dice)
  end

  def test_game_not_won()
    #act
    won = @game.won

    #assert
    refute(won)
  end

  def test_game_has_players()
    #act
    players = @game.players

    #assert
    assert_equal(2, players.length)
  end

  def test_game_has_dice()
    #act
    dice = @game.dice

    #assert
    assert(dice.class == Dice)
  end

  def test_game_ends()
    #act
    @game.start()
    won = @game.won()
    
    #assert
    assert(won)
  end

end
