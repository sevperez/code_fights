# Code Fights - The Core - Problem 22 - Swap Adjacent Bits

def swapAdjacentBits(n)
  getBitPairs(n).map(&:reverse).join("").to_i(2)
end

def getBitPairs(n)
  bin = n.to_s(2).length.odd? ? "0" + n.to_s(2) : n.to_s(2)
  bin.scan(/[01]{2}/)
end

p swapAdjacentBits(13)            # => 14
p swapAdjacentBits(74)            # => 133
p swapAdjacentBits(1073741823)    # => 1073741823
p swapAdjacentBits(0)             # => 0
p swapAdjacentBits(1)             # => 2

# Input
# - An integer (n)

# Output
# - An integer representing the binary representation of n where each pair of bits
#   has been swapped (1010 --> 101)

# Approach
# - Convert n to a binary string
# - Split string into an array of char pairs
# - Map over array, reversing each pair
# - Join pairs back together
# - Convert result into decimal
