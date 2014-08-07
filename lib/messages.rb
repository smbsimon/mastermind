require "colorize"

class Messages

  def welcome_message
    puts "
+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+-+-+-+-+
|W|e|l|c|o|m|e| |t|o| |M|a|s|t|e|r|m|i|n|d|
+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+-+-+-+-+

Would you like to read the (i)nstructions, (p)lay, or (q)uit?\n "
  end

  def enter_command
    print "Enter your command: "
  end

  def instruction_message
    puts "\n* The game has created a four-character mystery sequence composed of the colors #{"(r)ed".colorize(:red)}, #{"(g)reen".colorize(:green)}, #{"(b)lue".colorize(:blue)}, and/or #{"(y)ellow".colorize(:yellow)}.\n* Colors can be repeated.\n* A partial match happens when you guess a color that is used in the mystery sequence but guessed in the wrong position.\n* A total match means that you have correctly guessed both the color and the position.\n* Your challenge is to get four total matches.\n\nReady to (p)lay?\n "
  end

  def quit_message
    puts "\nThanks for playing!\n "
  end

  def sara
    puts "\nS is for Sara. The best. The best!\n "
  end

  def invalid_message
    puts "\nOops! Invalid command. Please try again.\n "
  end

  def play_game_message
    puts "\nThe four-character mystery sequence is made up of #{"(r)ed".colorize(:red)}, #{"(g)reen".colorize(:green)}, #{"(b)lue".colorize(:blue)}, and/or #{"(y)ellow".colorize(:yellow)}. Colors can be repeated. What's your first guess?\n "
  end

  def enter_guess
    print "Enter your guess: "
  end

  def win_message(turn_counter, minutes, seconds)
    puts "\nYou win! It took you #{turn_counter} guesses. It took you #{minutes} minute(s) and #{seconds} second(s). Would you like to (p)lay again or (q)uit?\n "
  end

  def full_match(number_of_full_matches, number_of_partial_matches, turn_counter)
    puts "\nYou have #{number_of_full_matches} full match(es) and #{number_of_partial_matches} partial match(es). You've taken #{turn_counter} guess(es).\n "
  end

  def partial_match(number_of_full_matches, number_of_partial_matches, turn_counter)
    puts "\nYou have 0 full match(es) and #{number_of_partial_matches} partial match(es). You've taken #{turn_counter} guess(es).\n "
  end

  def no_match(turn_counter)
    puts "\nYou have no matches. You've taken #{turn_counter} guess(es).\n "
  end

  def invalid_guess_characters
    puts "\nOops! You can only use the letters for #{"(r)ed".colorize(:red)}, #{"(g)reen".colorize(:green)}, #{"(b)lue".colorize(:blue)}, and #{"(y)ellow".colorize(:yellow)}. Please try again.\n "
  end

  def guess_too_short
    puts "\nThe length is too short. It must be four characters.\n "
  end

  def guess_too_long
    puts "\nThe length is too long. It must be four characters.\n "
  end

end
