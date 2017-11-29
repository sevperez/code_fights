# Code Fights - The Core - Problem 5 - Max Multiple

def maxMultiple(divisor, bound)
  result = bound
  
  while result % divisor != 0
    result -= 1
  end
  
  result
end

p maxMultiple(3, 10)  # => 9
p maxMultiple(2, 7)   # => 6
p maxMultiple(10, 50) # => 50

# Input
# - An integer (divisor) representing a divisor against which to test N
# - An integer (bound) representing a boundary against which N must be <

# Output
# - An integer (N)
#   - Rules
#     - Greatest possible integer that is:
#       - divisible by divisor
#       - > 0
#       - < bound

# Approach
# - Set result to equal bound
# - While result ! divisible by divisor, decrement
#   - If result is divisble by divisor, return
