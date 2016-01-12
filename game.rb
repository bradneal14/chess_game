require_relative 'board.rb'
require_relative 'empty_piece.rb'
require_relative 'display.rb'
require_relative 'player.rb'
require_relative 'cursorable.rb'

class Game

  def initialize
    @board = Board.new
    @player = Player.new(@board)
  end


  def run
    puts "WASD or arrow keys to move the cursor, enter or space to confirm."
    until false
      pos = @player.move
      @board.mark(pos)
    end
  end
  Game.new.run
end
