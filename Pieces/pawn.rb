class Pawn

  attr_reader :id

  def initialize(value, id)
    @value = value
    @id = id
  end

  def to_s
    @value
  end


  UP_PAWN_MOVES = [
    [1,0]
  ]

  UP_PAWN_KILL = [
    [1,1],
    [1,-1]
  ]

  UP_PAWN_START = [
    [2,0]
  ]

  DOWN_PAWN_MOVES = [
    [-1,0]
  ]

  DOWN_PAWN_KILL = [
    [-1,-1],
    [-1,1]
  ]

  DOWN_PAWN_START = [
    [-2,0]
  ]


end
