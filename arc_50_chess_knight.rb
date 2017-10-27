# Code Fights - Arcade - Problem 50 - chessKnight

VALID_RANGE = (1..8)
MOVES = [[2, 1], [2, -1], [1, 2], [1, -2], [-2, 1], [-2, -1], [-1, 2], [-1, -2]]

def chessKnight(cell)
  pos = convert_chess_notation(cell)
  
  possible_moves = MOVES.map { |x, y| [x + pos[0], y + pos[1]]}
  
  possible_moves.select do |x, y|
    VALID_RANGE.include?(x) && VALID_RANGE.include?(y)
  end.length
end

def convert_chess_notation(str)
  horizontals = "hgfedcba"
  
  [(horizontals.index(str[0])) + 1, str[1].to_i]
end

p chessKnight("a1") # => 2
p chessKnight("c2") # => 6
p chessKnight("d5") # => 8


# Input
# - A two character string representing a position on a chessboard in chess notation

# Output
# - An integer representing the number possible moves for a knight piece on the 
#   provided position.
#   - Rules:
#     - A knight may move:
#       - 2 horizontal and 1 vertical
#       - 1 horizontal and 2 vertical

# Approach
# - Set constants for max and min positions (1-8)
# - Convert the position from chess notation to an array of integers
#   - h = 1, a = 8
# - Build a set of all 8 moves from the given position
#   - Move: [origX + 2, origY + 1] (etc)
# - Filter the set of moves to only those that are legal
# - Return the number of remaining sets
