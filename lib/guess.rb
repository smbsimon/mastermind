class Guess
  attr_reader :color

  def initialize(color)
    @color = color
  end

  def make_guess
    puts "Make your guess!"
    guess(gets.chomp)
  end

  def color_slots?
    4
  end

end
