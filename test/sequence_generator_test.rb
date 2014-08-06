require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/sequence_generator"

class SequenceGeneratorTest < Minitest::Test
  def test_it_exits
    assert SequenceGenerator
  end

  def test_it_has_a_pool
    possible_values = %w[r b g y]
    generator = SequenceGenerator.new(possible_values)
    assert_equal %w[r b g y], generator.pool
  end

  def test_it_can_create_a_sequence_of_a_given_length
    possible_values = %w[r b g y]
    generator = SequenceGenerator.new(possible_values)
    secret_code = generator.create(4)

    assert_equal 4, secret_code.size
  end

  def test_it_returns_an_array
    possible_values = %w[r b g y]
    generator = SequenceGenerator.new(possible_values)
    secret_code = generator.create(4)

    assert_equal Array, secret_code.class
  end

end
