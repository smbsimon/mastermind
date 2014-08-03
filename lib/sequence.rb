class Sequence
  def generate_sequence(pool) # an instance method that belongs to class Sequence
    pool.map { pool.sample }
  end
end
