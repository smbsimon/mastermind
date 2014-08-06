gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sequence_generator'
require_relative '../lib/sequence_matcher'

class SequenceMatcherTest < Minitest::Test
  attr_reader :sequence, :random_sequence

  def setup
    @colors = (["r", "b", "g", "y"])
    @sequence = SequenceGenerator.new(@colors)
    @random_sequence = sequence.create(4)
  end
  
end
