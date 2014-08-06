class Messages

  def welcome_message
    puts "Welcome to Mastermind. Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def enter_command
    print "Enter your command: "
  end

  def instruction_message
    puts "Guess the four-character mystery sequence composed of the colors red, green, blue, and yellow. Colors can be repeated. A partial match is one with a color that's used in the sequence but guessed in the wrong position. A total match correctly guesses the color and the placement. Your challenge is to get four total matches."
  end

  def quit_message
    puts "Thanks for playing."
  end

  def sara
    puts "S is for Sara. The best. The best!"
  end

  def invalid_message
    puts "Invalid command. Try again."
  end

  def play_game_message
    puts "The mystery sequence contains four characters made up of (r)ed, (g)reen, (b)lue, and (y)ellow. Colors can be repeated."
  end

  def enter_guess
    print "Enter your guess: "
  end

  def win_message
    puts "\n\ You win! It took you #{turn_counter} guesses.\n\ "
  end

  def full_match_message(number_of_full_matches, number_of_partial_matches, turn_counter)
    puts "\n\ You have #{number_of_full_matches} full match(es) and #{number_of_partial_matches} partial match(es). You've taken #{turn_counter} guess(es). \n\ "
  end

  def partial_match_message(number_of_full_matches, number_of_partial_matches, turn_counter)
    puts "\n\ You have 0 full match(es) and #{number_of_partial_matches} partial match(es). You've taken #{turn_counter} guess(es). \n\ "
  end

  def no_match_message(turn_counter)
    puts "\n\ You have no matches. You've taken #{turn_counter} guess(es). \n\ "
  end

  def invalid_guess
    puts "\n\ You can only use the letters r, b, g, and y. Please try again. \n\ "
  end

  def quit_game_message
    puts "\n\ Thanks for playing! \n\ "
  end


end
