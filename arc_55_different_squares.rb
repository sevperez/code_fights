# Code Fights - Arcade - Problem 55 - Different Squares

def differentSquares(matrix)
  squares = []
  
  matrix[0..-2].each_with_index do |row, row_idx|
    row[0..-2].each_with_index do |cell, cell_idx|
      top_left = cell
      top_right = matrix[row_idx][cell_idx + 1]
      btm_left = matrix[row_idx + 1][cell_idx]
      btm_right = matrix[row_idx + 1][cell_idx + 1]
      
      squares << [[top_left, top_right], [btm_left, btm_right]]
    end
  end
  
  squares.uniq.length
end

matrix = [[1, 2, 1],
          [2, 2, 2],
          [2, 2, 2],
          [1, 2, 3],
          [2, 2, 1]]
          
p differentSquares(matrix)  # => 6

# Input
# - A rectangular matrix (2d array) with each cell containing an integer between 0-9

# Output
# - An integer representing the number of unique 2x2 squares in the matrix

# Approach
# - Iterate over each row except the last row
#   - On each iteration, iterate over each cell, except the last one
#     - Push a new 2x2 square to the squares array
#       - [row[i][j], row[i][j + 1]], [row[i + 1][j], row[i + 1][j + 1]]
# - Filter the squares array to contain only unique values
# - Return the length of the filtered array
