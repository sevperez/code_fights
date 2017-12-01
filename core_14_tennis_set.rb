# Code Fights - The Core - Problem 14 - Tennis Set

def tennisSet(score1, score2)
  low, high = [score1, score2].minmax
  
  (high == 6 && low < 5) || (high == 7 && low >= 5 && low < 7)
end

p tennisSet(6, 4)   # => true
p tennisSet(3, 6)   # => true
p tennisSet(8, 5)   # => false
p tennisSet(6, 5)   # => false
p tennisSet(7, 7)   # => false

# Input
# - Two integers (score1, score2)

# Output
# - A boolean describing whether a tennis set can finish with the provided scores
#   - Rules:
#     - A tennis set ends if...
#       - high == 6 && low < 5
#       - high == 7 && low >= 5 && low < 7

# Approach
# - Test winning conditions and return boolean
