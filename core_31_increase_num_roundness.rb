# Code Fights - The Core - Problem 31 - Increase Number Roundness

def increaseNumberRoundness(n)
  /[1-9]+0+[1-9]+/.match?(n.to_s)
end

p increaseNumberRoundness(902200100)   # => true
p increaseNumberRoundness(99080)   # => true
p increaseNumberRoundness(1022220)   # => true
p increaseNumberRoundness(11000)   # => false
p increaseNumberRoundness(234230)   # => false

# Input
# - An integer

# Output
# - A boolean describing whether it is possible to increase "roundness" by swapping
#   one pair (adjacent or not) of digits
#   - Rules
#     - A number's roundess is determined by the number of trailing 0s

# Approach
# - Regex to check for pattern:
#   (one or more non-zeroes)(one or more zeroes)(one or more non-zeroes)
