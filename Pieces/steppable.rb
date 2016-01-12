module Steppable
  KNIGHT_MOVES  = [
    [-1, 2],
    [1, 2],
    [-1, -2],
    [1, -2],
    [2, 1],
    [2,-1],
    [-2,-1],
    [-2,1]
  ]

  KING_MOVES = [
    [0,1],
    [0,-1],
    [1,0],
    [1,1],
    [1,-1]
    [-1,-1],
    [-1,0],
    [-1,1]
  ]

  UP_PAWN_MOVES = [
    [1,0]
  ]

  UP_PAWN_KILL = [
    [1,1]
    [1,-1]
  ]

  UP_PAWN_START = [
    [2,0]
  ]

  DOWN_PAWN_MOVES = [
    [-1,0]
  ]

  DOWN_PAWN_KILL = [
    [-1,-1]
    [-1,1]
  ]

  DOWN_PAWN_START = [
    [-2,0]
  ]


end
