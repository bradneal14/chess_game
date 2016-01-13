require_relative 'slideable.rb'

class Rook

  # include Slideable

  attr_reader :id

  def initialize(value, id, board)
    @value = value
    @id = id
    @board = board
  end



  def to_s
    @value
  end

  # def valid_moves?(start_pos)
  #   pos_moves = []
  #
  #
  #   HOR_MOVES.each do |pos|
  #     xnew_spot = start_pos[0] + pos[0]
  #     ynew_spot = start_pos[1] + pos[1]
  #
  #     potential_spot = xnew_spot, ynew_spot
  #     if board[potential_spot].id == 7
  #       pos_moves << potential_spot
  #     end
  #      return pos_moves
  #   end







end
