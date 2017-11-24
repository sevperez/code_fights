# Code Fights - Arcade - Problem 60 - Sudoku

def sudoku(grid)
  grid.all? { |set| check_valid(set) } &&
    build_cols(grid).all? { |set| check_valid(set) } &&
    build_subgrids(grid).all? { |set| check_valid(set) }
end

def build_cols(grid)
  cols = []
  
  0.upto(8) do |n|
    col = grid.map { |row| row[n] }
    
    cols << col
  end
  
  cols
end

def build_subgrids(grid)
  subgrids = []
  
  grid.each_slice(3) do |section|
    a = []
    b = []
    c = []
    
    section.each do |row|
      a << row[0..2]
      b << row[3..5]
      c << row[6..8]
    end
    
    [a, b, c].each do |subgrid|
      subgrids << subgrid.flatten
    end
  end
  
  subgrids
end

def check_valid(set)
  set.sort == (1..9).to_a
end

grid1 = [[1,3,2,5,4,6,9,8,7], 
         [4,6,5,8,7,9,3,2,1], 
         [7,9,8,2,1,3,6,5,4], 
         [9,2,1,4,3,5,8,7,6], 
         [3,5,4,7,6,8,2,1,9], 
         [6,8,7,1,9,2,5,4,3], 
         [5,7,6,9,8,1,4,3,2], 
         [2,4,3,6,5,7,1,9,8], 
         [8,1,9,3,2,4,7,6,5]]
p sudoku(grid1)  # => true

grid2 = [[1,3,2,5,4,6,9,2,7], 
         [4,6,5,8,7,9,3,8,1], 
         [7,9,8,2,1,3,6,5,4], 
         [9,2,1,4,3,5,8,7,6], 
         [3,5,4,7,6,8,2,1,9], 
         [6,8,7,1,9,2,5,4,3], 
         [5,7,6,9,8,1,4,3,2], 
         [2,4,3,6,5,7,1,9,8], 
         [8,1,9,3,2,4,7,6,5]]
p sudoku(grid2) # => false


# Input
# - A two-dimensional array of size 9 x 9 containing positive integers between 1 & 9

# Output
# - A boolean describing whether the provided input grid is a valid sudoku board
#   - Rules
#     - Each row contains each integer from 1 to 9 exactly once
#     - Each col contains each integer from 1 to 9 exactly once
#     - Each 3 x 3 sub grid contains each integer from 1 to 9 exactly once

# Approach
# - Set a constant for "valid" (all ints from 1 to 9)
# - Compare each row to check if valid
#   - Iterate over entire grid, checking if each row (sub arr), sorted, == valid
#     - If any is not valid, immediately return false
# - Compare each col to check if valid
#   - From 0 to 8, loop
#     - Build column with current index
#     - Check if sorted column is valid
#       - If not valid, immediately return false
# - Compare each subgrid to check if valid
#   - Build subgrid
#     - Iterate each slice of 3, pushing to subgrid array
#     - Check if subgrid is valid
#       - If not valid, immediately return false
