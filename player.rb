require_relative 'display.rb'
# require_relative 'game.rb'



class Player

  attr_accessor :in_hand

  def initialize(board)
    @display = Display.new(board)
  end

  def move
    result = nil
    until result
      @display.render
      result = @display.get_input
    end
    result
  end

end
