class SequenceGenerator
  attr_reader :pool

  def initialize(pool)
    @pool = pool
  end

  def create(size)
    secret_code = []

    size.times { secret_code << pool.sample }

    secret_code
  end
end
