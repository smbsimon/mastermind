class CLI
  attr_reader :command, :guess, :secret_code

  def initialize
    @command = ""
    @turn_counter = 0
  end

  def start
    puts "Welcome to Mastermind. Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
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
      puts "Guess the four-character mystery sequence composed of the colors red, green, blue, and yellow. Colors can be repeated. A partial match is one with a color that's used in the sequence but guessed in the wrong position. A total match correctly guesses the color and the placement. Your challenge is to get four total matches."
    when quit?
      puts "Thanks for playing."
    when sara?
      puts "S is for Sara."
    else
      puts "Invalid command. Try again."
    end
  end

  def play_game
    puts "The mystery sequence contains four characters made up of (r)ed, (g)reen, (b)lue, and (y)ellow. Colors can be repeated."
    sequence_generator = SequenceGenerator.new(%w[r b g y])
    @secret_code       = sequence_generator.create(4)
    # puts secret_code.inspect
    until win?
      print "Enter your guess: "
      @guess = gets.strip.split("")
      @turn_counter += 1

      case
      when win?
        puts "\n\ You win! It took you #{@turn_counter} guesses.\n\ "
      when full_match?
        puts "\n\ You have #{number_of_full_matches} full match(es) and #{number_of_partial_matches} partial match(es). You've taken #{@turn_counter} guess(es). \n\ "
      when partial_match?
        puts "\n\ You have 0 full match(es) and #{number_of_partial_matches} partial match(es). You've taken #{@turn_counter} guess(es). \n\ "
      else
        puts "You have no matches."
        end
    end
  end

  def partial_match?
    number_of_partial_matches > 0
  end

  def full_match?
    number_of_full_matches > 0
  end

  def number_of_full_matches
    guess.each_with_index.map do |color,index|
      secret_code[index] == color
    end.count { |element| element == true }
  end

  def number_of_partial_matches
    zipped = secret_code.zip(guess)
    non_matching_pairs = zipped.delete_if do |pair|
      pair[0] == pair[1]
    end

    code_guess = non_matching_pairs.transpose

    code_guess[0].map do |letter|
      code_guess[1].join("").include?(letter)
    end.count { |element| element == true }
  end

  def win?
    guess == secret_code
  end

  def playing?
    command == "p" || command == "play"
  end

  def instructions?
    command == "i" || command == "instructions"
  end

  def sara?
    command == "s"
  end

  def quit?
    command == "q" || command == "quit"
  end
end
