require_relative 'empty_piece.rb'
require_relative 'display.rb'
require_relative 'cursorable.rb'
require_relative 'player.rb'

class Board

  def initialize
    @grid = Array.new(8) {Array.new(8) { EmptyPiece.new } }
    @grid[0][0] = XPiece.new
    @in_hand = []
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
    self[start] = EmptyPiece.new
  end

  def mark(pos) #[0,1]
    x, y = pos
    @grid[x][y] = XPiece.new
  end

  def pick_up(pos) #pos = [0,0]
    x, y  = pos

    if @grid[x][y].is_a? (XPiece)
      @in_hand << @grid[x][y]
    else
      p "cannot pickup empty piece"

    end

  end

  def put_down(pos)
    x, y = pos

    if @grid[x][y].is_a?(EmptyPiece) && @in_hand.length > 0
      @grid[x][y] = @in_hand.shift
    else
      p 'please put on empty grid'

    end

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
