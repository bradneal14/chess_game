require_relative 'display.rb'


class Player

  attr_reader :name

  def initialize(display, name)
    @name = name
    @display = display
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
