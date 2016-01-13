require_relative 'board.rb'
require_relative 'empty_piece.rb'
require_relative 'display.rb'
require_relative 'player.rb'
require_relative 'cursorable.rb'

class Game


  attr_reader :board


  def initialize
    @board = Board.new
    # @player = Player.new(@board)
    @display = Display.new(@board, self)
    # @move_was_made = false
    @players = [Player.new(@display, "Player1"), Player.new(@display, "Player2")]
  end

  def switch_players
    @players.rotate!
  end

  def current_player
    @players[0]
  end


  def run
    p "Mark all the spaces on the board!"
    p "WASD or arrow keys to move the cursor, enter or space to confirm."
    until false
      pos = current_player.move
      new_pos = current_player.move
      @board.move(pos, new_pos)
      if pos != new_pos
        switch_players
      end
    end
    puts "Hooray, the board is filled!"
  end



  Game.new.run
end
