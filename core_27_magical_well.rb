# Code Fights - The Core - Problem 27 - Magical Well

def magicalWell(a, b, n)
  total = 0
  
  1.upto(n) do |_|
    total += a * b
    a += 1
    b += 1
  end
  
  total
end

p magicalWell(1, 2, 2)   # => 8
p magicalWell(1, 1, 1)   # => 1
p magicalWell(6, 5, 3)   # => 128

# Input
# - Two positive integers (a, b) representing two numbers on a magical well
# - A positive integer (n) representing the number of "marbles" you have

# Output
# - An integer representing the sum of money earned where
#   - Each time your throw a "marble" in the well, you get a * b dollars
#   - After throwing a marble in, a and b both increment by 1

# Approach
# - Set total to 0
# - Loop n times
#   - On each iteration
#     - total += a * b
#     - a += 1
#     - b += 1
# - Return total
