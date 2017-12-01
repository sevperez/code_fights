# Code Fights - The Core - Problem 20 - Mirror Bits

def mirrorBits(a)
  a.to_s(2).reverse.to_i(2)
end

p mirrorBits(97)    # => 67
p mirrorBits(8)    # => 1

# Input
# - An integer (a)

# Output
# - An integer, which represents (a) with its bits reversed in order

# Approach
# - Convert a to a binary string
# - Reverse the binary string
# - Convert the binary string back to an integer and return
