# Code Fights - The Core - Problem 17 - Kill K-th Bit

def killKthBit(n, k)
  bit_str = n.to_s(2)
  return n if bit_str.length < k
  
  bit_str[-k] = "0"
  
  bit_str.to_i(2)
end

p killKthBit(37, 3)           # => 33
p killKthBit(37, 4)           # => 37
p killKthBit(37, 2)           # => 37
p killKthBit(0, 4)            # => 0
p killKthBit(2147483647, 16)  # => 2147450879

# Input
# - An integer (n), representing the number to transform
# - An integer (k), representing the kth bit from the right in binary representation of n

# Output
# - An integer, where the kth bit of n has been changed to 0 (if not already 0)

# Approach
# - Convert n to binary string (bit_str)
# - If kth bit (bit_str[-k]) is not 0, transform to 0
# - Convert bits to base 10

