# Code Fights - The Core - Problem 2 - Largest Number

def largestNumber(n)
  result = ''
  
  n.times { |_| result += '9' }
  
  result.to_i
end

p largestNumber(1)  # => 9
p largestNumber(2)  # => 99
p largestNumber(7)  # => 9999999

# Input
# - An integer (n)

# Output
# - An integer representing the largest possible integer of n digits

# Approach
# - Initialize a result string
# - n.times
#   - Concatenate "9" digit char onto the result string
# - Return result.to_i
