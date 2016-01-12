require_relative 'board.rb'
require_relative 'empty_piece.rb'
require_relative 'display.rb'
require_relative 'player.rb'
require_relative 'cursorable.rb'

class Game


  attr_reader :board, :move_was_made


  def initialize
    @board = Board.new
    @player = Player.new(@board)
    
    @move_was_made = false
    @player1 = true
    @player2 = false
  end

  def switch_players
    @player1, @player2 = @player2, @player1
  end


  def run
    p "Mark all the spaces on the board!"
    p "WASD or arrow keys to move the cursor, enter or space to confirm."
    until false
      old_board = board.dup
      pos = @player.move
      new_pos = @player.move
      @board.move(pos, new_pos)
      if board == old_board
        @move_was_made = false
      else
        @move_was_made = true
      end
      # @player.switch_players
    end
    puts "Hooray, the board is filled!"
  end



  Game.new.run
end
