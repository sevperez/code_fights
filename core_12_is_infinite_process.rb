# Code Fights - The Core - Problem 12 - Is Infinite Process?

def isInfiniteProcess(a, b)
  b < a || (b - a).odd?
end

p isInfiniteProcess(2, 3)   # => true
p isInfiniteProcess(0, 1)   # => true
p isInfiniteProcess(3, 1)   # => true
p isInfiniteProcess(2, 6)   # => false
p isInfiniteProcess(2, 10)   # => false

# Input
# - Two integers (a, b)

# Output
# - A boolean describing whether the following pseudocode will result in an infinite
#   loop if taking a and b as input
#   - Pseudocode
#     while a is not equal to b do
#     increase a by 1
#     decrease b by 1

# Approach
# - If b <= a, return true
# - If b - a is odd, return true
