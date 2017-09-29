class Dice

  def roll()
    result = []
    4.times do
      random_number = rand(1..6)
      result << random_number
    end
    
    return result
  end

  def roll_to_score(numbers)
    return numbers.sort.reverse().join().to_i()
  end
end
