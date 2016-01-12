require_relative 'board.rb'
require_relative 'empty_piece.rb'
require_relative 'display.rb'
require_relative 'player.rb'
require_relative 'cursorable.rb'

class Game

  attr_accessor :in_hand
  attr_reader :board

  def initialize
    @board = Board.new
    @player = Player.new(@board)
  end


  def run
    puts "Mark all the spaces on the board!"
    puts "WASD or arrow keys to move the cursor, enter or space to confirm."
    until false
      pos = @player.move
      new_pos = @player.move
      @board.move(pos, new_pos)
    end
    puts "Hooray, the board is filled!"
  end



  Game.new.run
end
