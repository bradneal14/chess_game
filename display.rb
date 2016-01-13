require "colorize"
require_relative "cursorable"
require_relative "board.rb"

class Display
  include Cursorable

  attr_reader :cursor_pos, :player1, :board, :game

  def initialize(board, game)
    @game = game
    @board = board
    @cursor_pos = [3,3]
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
    { background: bg, color: :black }
  end

  # def move_was_made
  #   current_board = board
  #   copy_of_board = board.dup
  #   if current_board = copy_of_board
  #     return false
  #   else
  #     return true
  #   end
  # end

  def render
    system("clear")
    puts "Let's play chess"
    puts "Arrow keys, WASD, or vim to move, space or enter to confirm."


    build_grid.each { |row| puts row.join }
    p game.current_player.name
     #map? #each? can we use match?
    # p game.move_was_made

    # if player1==true
    #   p "player1 turn"
    # else
    #   p "player2 turn"
    # end
    # switch_players if move_was_made
  end
end
