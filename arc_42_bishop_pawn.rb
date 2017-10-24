# Code Fights - Arcade - Problem 42 - Bishop and Pawn

def bishopAndPawn(bishop, pawn)
  bishop = convert_chess_notation(bishop)
  pawn = convert_chess_notation(pawn)
  
  vertical = (bishop[0] - pawn[0]).abs
  horizontal = (bishop[1] - pawn[1]).abs
  
  vertical == horizontal
end

def convert_chess_notation(str)
  positions = ['h', 'g', 'f', 'e', 'd', 'c', 'b', 'a']
  str.split('').map { |ele| ele =~ /[0-9]/ ? ele.to_i : positions.index(ele) + 1 }
end

p bishopAndPawn('a1', 'c3') # => true
p bishopAndPawn('a5', 'c3') # => true
p bishopAndPawn('h1', 'h3') # => false
p bishopAndPawn('g1', 'f3') # => false


# Input
# - A string representing the position of the bishop in chess notation (a-h, 1-8)
# - A string representing the position of the pawn in chess notation (a-h, 1-8)

# Output
# - A boolean representing whether the bishop can capture the pawn in one move
#   - Rules: bishop is on the same diagonal as the pawn

# Approach
# - Pieces are on a diagonal if the vertical and horizontal distance is equal
# - Split each input string into an array of chars
#   - Map over array, converting to numbers ('a' to 1, etc)
# - Calculate vertical and horizontal distances
# - Return true if vertical == horizontal