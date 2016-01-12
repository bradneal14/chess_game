require_relative 'board.rb'

class EmptyPiece

  def initialize
    @value = "   "
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
