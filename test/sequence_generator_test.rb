require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/sequence_generator"

class SequenceGeneratorTest < Minitest::Test
  def setup
    @pool = %w[r b g y]
    @generator = SequenceGenerator.new(@pool)
  end

  def test_it_exits
    assert SequenceGenerator
  end

  def test_it_has_a_pool
    assert_equal %w[r b g y], @generator.pool
  end

  def test_it_can_create_a_sequence_of_a_given_length
    secret_code = @generator.create(4)

    assert_equal 4, secret_code.size
  end

  def test_it_returns_an_array
    secret_code = @generator.create(4)

    assert_equal Array, secret_code.class
  end

  def test_it_generates_a_secret_code_with_only_letters_from_the_pool
    secret_code = @generator.create(4)

    assert secret_code.all? { |letter| @pool.include? letter }
  end
end
