require "colorize"
require_relative "cursorable"
require_relative "board.rb"

class Display
  include Cursorable

  attr_reader :cursor_pos

  def initialize(board)
    @board = board
    @cursor_pos = [0, 0]
  end

  def build_grid
    @board.rows.map.with_index do |row, i|
      build_row(row, i)
    end
  end

  def build_row(row, i)
    row.map.with_index do |piece, j|
      color_options = colors_for(i, j)
      piece.to_s.colorize(color_options)
    end
  end

  def colors_for(i, j)
    if [i, j] == @cursor_pos
      bg = :light_yellow
    elsif (i + j).odd?
      bg = :light_blue
    else
      bg = :white
    end
    { background: bg, color: :red }
  end

  def render
    system("clear")
    puts "Fill the grid!"
    puts "Arrow keys, WASD, or vim to move, space or enter to confirm."
    build_grid.each { |row| puts row.join } #map? #each? can we use match?
  end
end
