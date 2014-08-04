require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/sequence_generator"

class SequenceGeneratorTest < Minitest::Test
  def test_it_exits
    assert SequenceGenerator
  end

  def test_it_has_a_pool
    generator = SequenceGenerator.new(%w[a b c d])
    assert_equal %w[a b c d], generator.pool
  end

  def test_it_can_create_a_sequence
    generator   = SequenceGenerator.new(%w[a b c d])
    secret_code = generator.create(4)

    assert_equal 4, secret_code.size
    assert_equal Array, secret_code.class
  end
end
