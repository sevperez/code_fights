# Code Fights - The Core - Problem 43 - Is Power?

def isPower(n)
  return true if n == 1
  
  max = Math.sqrt(n).ceil
  
  2.upto(max) do |e|
    i = 1
    loop do
      result = i**e
      return true if result == n
      break if result > n
      i += 1
    end
  end
  
  false
end

p isPower(1)          # => true
p isPower(100)        # => true
p isPower(125)        # => true
p isPower(324)        # => true
p isPower(119)        # => false
p isPower(72)         # => false
p isPower(11)         # => false

# Input
# - A positive integer (n)

# Output
# - A boolean describing whether the provided integer (n) is a power of 
#   some non-negative integer (e)
#   - Rules
#     - e >= 2

# Approach
# - Set i to 1
# - Set max (i) to Math.sqrt(n).ceil
# - Loop up from i, incrementing by 1 on each iteration
#   - Set e to 2
#   - loop
#     - if i**e == n, return true
#     - else, i += 1
#     - break if i**e > n
# - Return false