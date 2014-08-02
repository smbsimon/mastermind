gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sequence'

class SequenceTest < Minitest::Test
  def test_that_it_generates_a_random_four_letter_sequence
    letters = ["r", "y", "g", "b"]

    random_sequences = letters.map do |sequence|
      sequence.random
    end
    assert_equal ["b" "y" "r" "g"], random
  end
end
