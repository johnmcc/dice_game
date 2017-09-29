class Game
  attr_reader :won, :players, :dice

  def initialize(players, dice)
    @players = players
    @dice = dice
    @won = false
  end

  def start()
    puts "Welcome to BEAT THAT!"

    while !@won
      current_player = @players[0]
      last_player = @players[1]

      current_player.roll(@dice)
      current_player_score = current_player.last_score
      last_player_score = last_player.last_score

      puts "#{current_player.name} rolled a #{current_player_score}"

      if current_player_score > last_player.last_score
        @players.rotate! #exclamation mark needed to permanently change the array
      else
        @won = true
        puts "#{last_player.name} wins with a score of #{last_player.last_score}"
      end
    end
  end
end
