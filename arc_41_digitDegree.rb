# Code Fights - Arcade - Problem 41 - digitDegree

def digitDegree(n)
  return 0 if n < 10
  num_cycles = 0
  
  while n >= 10
    digs = n.to_s.split('').map(&:to_i)
    n = digs.reduce(:+)
    num_cycles += 1
  end
  
  num_cycles
end

p digitDegree(5)    # => 0
p digitDegree(100)  # => 1
p digitDegree(91)   # => 2

# Input
# - A positive integer (n)

# Output
# - The "digit degree" of n
#   - Rules:
#     - Digit degree is the number of times needed to replace n with the sum
#       of its digits until it is a a single digit number.

# Approach
# - Split n into an array of its digits (to string, split, to int)
# - Sum the digits
# - Increase number of cycles by 1
# - Repeat as necessary