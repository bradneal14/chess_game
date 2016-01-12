require_relative 'display.rb'



class Player

  attr_reader :player1, :player2

  def initialize(board)
    @display = Display.new(board)
    @player1 = true
    @player2 = false
  end

  def move
    result = nil
    until result
      @display.render
      result = @display.get_input
    end
    result
  end

  def switch_players
    if @player1 == true
      p "player1 turn"
    else
      p "player2 turn"
    end
    @player1, @player2 = @player2, @player1
  end



end
