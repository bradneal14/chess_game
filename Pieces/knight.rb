class Knight

  attr_reader :id

  def initialize(value, id)
    @value = value
    @id = id
  end

  def to_s
    @value
  end

end
