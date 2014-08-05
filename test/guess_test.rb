gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess'

class GuessTest < Minitest::Test

  def test_it_has_one_color_slot
    guess = Guess.new("y")
    assert_equal "y", guess.color
  end

  # def test_it_has_four_colors_slot_by_default
  # end

  # def test_it_is_insensitive_to_case
  # end

  # def test_it_compares_secret_code_with_guess_of_user
  # end

  # def test_it_returns_error_message_if_user_enters_unrecognizable_input
  # end

  # def test_it_returns_number_of_colors_guessed_correctly
  # end

  # def test_it_returns_number_of_colors_guessed_correctly_in_correct_spot
  # end

end
