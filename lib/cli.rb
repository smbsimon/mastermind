class CLI
  attr_reader :command, :guess, :secret_code

  def initialize
    @command = ""
  end

  def start
    puts "Welcome to Mastermind by Sara."
    until quit?
      print "Enter your command: "
      @command = gets.strip
      process_input
    end
  end

  def process_input
    case
    when playing?
      play_game
    when instructions?
      puts "These are the instructions"
    when quit?
      puts "Thanks for playing."
    when sara?
      puts "I am Sara"
    else
      puts "Invalid command. Try again."
    end
  end

  def play_game
    puts "Game initialized."
    sequence_generator = SequenceGenerator.new(%w[r b g y])
    @secret_code       = sequence_generator.create(4)
    @guess             = ""
    puts secret_code.inspect
    until win?
      print "Enter your guess: "
      @guess = gets.strip.split("")
      puts secret_code.inspect
      case
      when win?
        puts "You win!"
      when color_matches?
        puts "You have some matches."
      end
    end
  end

  def color_matches?
    guess.any? { |color| secret_code.include?(color) }
  end

  def win?
    guess == secret_code
  end

  def playing?
    command == "p"
  end

  def instructions?
    command == "i"
  end

  def sara?
    command == "s"
  end

  def quit?
    command == "q"
  end
end

# color1 = "Red"
# color2 = "Blue"
# color3 = "Yellow"
# color4 = "Green"
#
# puts "\nThere are four colors: \n\t#{color1}\n\t#{color2}\n\t#{color3}\n\t#{color4}\n\t"
# puts "Your task is to determine the order of the colors. Prepare to be Masterminded.\n\t"
