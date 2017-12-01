# Code Fights - The Core - Problem 21 - Second-Rightmost Zero Bit

def secondRightmostZeroBit(n)
  return 2**(n.to_s(2).length - n.to_s(2).rindex(/0[1]*0/) - 1)
end

p secondRightmostZeroBit(37)            # => 8
p secondRightmostZeroBit(1073741824)    # => 2
p secondRightmostZeroBit(83748)         # => 2
p secondRightmostZeroBit(4)             # => 2

# Input
# - An integer (n)

# Output
# - An integer representing 2**i where i is the 0-based index position of the 
#   second rightmost zero bit of n

# Approach
# - Convert n to a binary string
# - Return the rightmost index that satisfies a regex matching a 0 followed by
#   0 or more 1s followed by another 0
# - Convert the index to count from the right (str.length - idx - 1)
# - Return 2 ** idx
