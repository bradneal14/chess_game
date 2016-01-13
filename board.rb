require_relative 'empty_piece.rb'
require_relative 'display.rb'
require_relative 'cursorable.rb'
require_relative 'player.rb'
require_relative 'piece.rb'

class Board

  attr_reader :grid

  def initialize
    @grid = Array.new(8) {Array.new(8) { EmptyPiece.new } }
    self.populate

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



def populate
  #PAWNS
  for i in (0..7)
    @grid[1][i] = Pawn.new(" \u2659 ", "Player1")
    @grid[6][i] = Pawn.new(" \u265F ", "Player2")
  end

  #ROOKS
  @grid[7][7] = Rook.new(" \u265C ".chomp, "Player2", self) #black
  @grid[7][0] = Rook.new(" \u265C ".chomp, "Player2", self)
  @grid[0][7] = Rook.new(" \u2656 ".chomp, "Player1", self) #white
  @grid[0][0] = Rook.new(" \u2656 ".chomp, "Player1", self)

  #Knight
  @grid[7][1] = Knight.new(" \u265E ".chomp, "Player2")
  @grid[7][6] = Knight.new(" \u265E ".chomp, "Player2")
  @grid[0][1] = Knight.new(" \u2658 ".chomp, "Player1")
  @grid[0][6] = Knight.new(" \u2658 ".chomp, "Player1")

  #Bishop
  @grid[7][2] = Bishop.new(" \u265D ".chomp, "Player2")
  @grid[7][5] = Bishop.new(" \u265D ".chomp, "Player2")
  @grid[0][2] = Bishop.new(" \u2657 ".chomp, "Player1")
  @grid[0][5] = Bishop.new(" \u2657 ".chomp, "Player1")

  #Queen
  @grid[7][3] = Queen.new(" \u265B ".chomp, "Player2")
  @grid[0][4] = Queen.new(" \u2655 ".chomp, "Player1")

  #King
  @grid[7][4] = King.new(" \u265A ".chomp, "Player2")
  @grid[0][3] = King.new(" \u2654 ".chomp, "Player1")

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
