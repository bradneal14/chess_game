require_relative 'board.rb'

class EmptyPiece

  attr_reader :id

  def initialize
    @value = "   "
    @id = 7
  end

  def inspect
    @value
  end

  def to_s
    "   "
  end

end

class XPiece
  def initialize
    @value = " x "
  end

  def to_s
    @value
  end

end
