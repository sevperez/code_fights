# Code Fights - The Core - Problem 6 - Circle of Numbers

def circleOfNumbers(n, firstNumber)
  half = n / 2
  result = firstNumber + half
  
  result >= n ? result - n : result
end

p circleOfNumbers(10, 2)  # => 7
p circleOfNumbers(10, 7)  # => 2
p circleOfNumbers(4, 1)   # => 3
p circleOfNumbers(6, 3)   # => 0

# Input
# - An even integer (n), representing the number of equidistant points along the 
#   circumference of a circle (from 0 to n - 1)
# - An integer (firstNumber) between 0 and n - 1, representing the point from which 
#   to calculate the number that is radially opposite it on a circle.

# Output
# - An integer, representing the radially opposite number from firstNumber on the circle

# Approach
# - Calculate half distance (n / 2)
# - result = firstNumber + half
#   - if result > n, result -= n
