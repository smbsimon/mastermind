gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sequence'

class SequenceMatcherTest < Minitest::Test
  attr_reader :sequence, :random_sequence

  def setup
    @sequence = SequenceMatcher.new
    @random_sequence = sequence.generate_sequence(["r", "b", "g", "y"])
  end

  def test_it_generates_a_four_letter_array
    assert_equal 4, random_sequence.length
  end

  def test_it_generates_sequences_that_are_actually_random
    10.times do
      base_result = random_sequence
      new_result = sequence.generate_sequence(["r", "b", "g", "y"])
      refute_equal base_result, new_result
    end
  end

  def test_it_generates_sequence_with_only_letters_from_the_pool
    pool = ["r", "b", "g", "y"]
    assert random_sequence.all? { |letter| pool.include? letter }
  end

end
