# Code Fights - The Core - Problem 34 - Count Black Cells

def countBlackCells(n, m)
  n + m + n.gcd(m) - 2
end

p countBlackCells(3, 4)   # => 6
p countBlackCells(3, 3)   # => 7
p countBlackCells(2, 5)   # => 6
p countBlackCells(1, 1)   # => 1
p countBlackCells(1, 2)   # => 2
p countBlackCells(1, 3)   # => 3
p countBlackCells(1, 239) # => 239
p countBlackCells(33, 44) # => 86

# Input
# - An integer (n) representing number of rows in a grid
# - An integer (m) representing number of columns in a grid

# Output
# - An integer representing the number of black cells on the grid
#   - Rules:
#     - A diagonal line is drawn from the upper left to the lower right of the grid
#     - If a cell has at least one point on the line, it is painted black, else white
#       - A corner counts as a point, as does the middle of a cell
