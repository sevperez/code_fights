# Code Fights - Arcade - Problem 59 - spiralNumbers

def spiralNumbers(n)
  result = Array.new(n) { Array.new(n) }
  num = 1
  round = 0
  
  loop do
    row = round
    col = round
    
    while col <= n - round - 1
      result[row][col] = num
      num += 1
      break if num > n * n || col == n - round - 1
      col += 1
    end
    break if num > n * n
    
    while row < n - round - 1
      row += 1
      result[row][col] = num
      num += 1
    end
    
    while col > round
      col -= 1
      result[row][col] = num
      num += 1
    end
    
    while row > round + 1
      row -= 1
      result[row][col] = num
      num += 1
      break if num > n * n
    end
    break if num > n * n
    round += 1
  end
  
  result
end

p spiralNumbers(2)
# => [[1, 2],
#     [4, 3]]

p spiralNumbers(3)
# => [[1, 2, 3],
#     [8, 9, 4],
#     [7, 6, 5]]

p spiralNumbers(5)
# => [[1, 2, 3, 4, 5], 
#     [16, 17, 18, 19, 6], 
#     [15, 24, 25, 20, 7], 
#     [14, 23, 22, 21, 8], 
#     [13, 12, 11, 10, 9]]

# Input
# - A positive integer (n)

# Output
# - A square matrix of size n x n containing integers from 1 to n*n in spiral order
#   starting in the top left and moving clockwise

# Approach
# - Initialize result matrix and fill with nil
# - Initialize round counter to 0
# - Initialize num to 1
# - loop
#   - set row / col to round
#   - while col <= n - 1 - round
#     - fill current with num
#     - increment num
#     - break if num > n * n
#     - increment col
#   - while row < n - 1 - round
#     - fill current with num
#     - increment num
#     - increment row
#   - while col > round
#     - decrement col
#     - fill current with num
#     - increment num
#   - while row > round + 1
#     - decrement row
#     - fill current with num
#     - increment num
#   - break if num > n * n
#   - increment round


# - Example:
# - initialize round to 0                 # ex: n = 5
# - set r and c to round                  # => 0
# - c increments until == n - 1 - round   # => 4
# - r increments until == n - 1 - round   # => 4
# - c decrements until == round           # => 0
# - r decrements until == round + 1       # => 1

# - increment round to 1
# - set r and c to round                  # => 1
# - c increments until == n - 1 - round   # => 3
# - r increments until == n - 1 - round   # => 3
# - c decrements until == round           # => 1
# - r decrements until == round + 1       # => 2

# - increment round to 2
# - set r and c to round                  # => 2
# - c increments until == n - 1 - round   # => 2 => break
