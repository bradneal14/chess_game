require_relative 'board.rb'

class EmptyPiece

  def initialize
    @value = "   "
    # Board.populate
  end

  def inspect
    @value
  end

end
