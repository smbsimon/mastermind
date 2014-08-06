require_relative 'messages'

class CLI
  attr_reader :command, :guess, :secret_code, :messages
  attr_accessor :turn_counter

  def initialize
    @command = ""
    @turn_counter = 0
    @messages = Messages.new
  end

  def start
    messages.welcome_message
    until quit?
      messages.enter_command
      @command = gets.strip
      process_input
    end
  end

  def process_input
    case
    when playing?
      play_game
    when instructions?
      messages.instruction_message
    when quit?
      messages.quit_message
    when sara?
      messages.sara
    else
      messages.invalid_message
    end
  end

  def play_game
    messages.play_game_message
    sequence_generator = SequenceGenerator.new(%w[r b g y])
    @secret_code       = sequence_generator.create(4)
    # puts secret_code.inspect
    until win?
      messages.enter_guess
      @guess = gets.strip.split("")
      @turn_counter += 1

      case
      when quit_game?
        messages.quit_game_message
        exit
      when invalid_characters?
        messages.invalid_guess
      when win?
        messages.win_message
      when full_match?
        messages.full_match_message(number_of_full_matches, number_of_partial_matches, turn_counter)
      when partial_match?
        messages.partial_match_message(number_of_full_matches, number_of_partial_matches, turn_counter)
      else
        messages.no_match_message(turn_counter)
      end
    end
  end

  def full_match?
    number_of_full_matches > 0
  end

  def partial_match?
    number_of_partial_matches > 0
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

  def invalid_characters?
    @guess.any? {|letter| letter =~ /[^rbgy]/}
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

  def quit_game?
    guess == ["q"] || guess == ["q","u","i","t"]
  end
end