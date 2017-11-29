# Code Fights - The Core - Problem 1 - Add Two Digits

def addTwoDigits(n)
  n.to_s.split('').map(&:to_i).reduce(:+)
end

p addTwoDigits(29) # => 11

# Input
# - A positive two-digit integer (n)

# Output
# - An integer representing the sum of the two digits in the input number

# Approach
# - Split n into an array of digit chars
#   - Convert n to a string
#   - Split string into chars
# - Reduce char array
#   - Return sum + c.to_i

