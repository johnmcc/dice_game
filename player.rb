class Player
  attr_reader :name, :last_score

  def initialize(name)
    @name = name #we have an instance variable to track the name
    @last_score = 0 #not needed outside the class therefore doesn't need to be get/set
  end

  def roll(dice)
    numbers = dice.roll()
    @last_score = dice.roll_to_score(numbers)
  end



end
