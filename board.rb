require_relative 'empty_piece.rb'
require_relative 'display.rb'
require_relative 'cursorable.rb'

class Board

  def initialize
    @grid = Array.new(8) {Array.new(8) { EmptyPiece.new } }
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, mark)
    row, col = pos
    @grid[row][col] = mark
  end

  def move(start, end_pos)
    self[end_pos] = self[start]
    self[start] = nil
  end

  def mark(pos)
    x, y = pos
    @grid[x][y] = XPiece.new
  end


  # def create_display
  #   display = Display.new(@board)
  #   display.build_grid
  # end

  def in_bounds?(pos)
    pos.all? { |x| x.between?(0, 7) }
  end

  def rows
    @grid
  end


  # def populate
  #   for i in (0..@grid.length-1)
  #     for j in (0..@grid.length-1)
  #         self[[i,j]] = EmptyPiece.new
  #     end
  #   end
  #
  # end


  # def move(start, end_pos)
  #   unless self[start].nil?
  #     self[start] = nil
  #     self[end_pos] = EmptyPiece.new
  #   end
  # end


end
