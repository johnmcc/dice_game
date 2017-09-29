require_relative './game'
require_relative './dice'
require_relative './player'

dice = Dice.new()
player1 = Player.new("John")
player2 = Player.new("Scott")

players = [player1, player2]

game = Game.new(players, dice)
game.start()
