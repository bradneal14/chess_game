require 'colorize'

class Piece

  def initialize(value, board)
    @value = value
  end

  def to_s
    display_str.colorize(color)
  end

end
