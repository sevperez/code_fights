# Code Fights - The Core - Problem 23 - Different Rightmost Bit

def differentRightmostBit(n, m)
  2**find_bit_pos(n, m)
end

def find_bit_pos(n, m)
  n_bin = n.to_s(2)
  m_bin = m.to_s(2)
  
  longest_length = [n_bin.length, m_bin.length].max
  
  n_bin = n_bin.rjust(longest_length, "0").reverse
  m_bin = m_bin.rjust(longest_length, "0").reverse
  
  0.upto(longest_length - 1) { |i| return i if n_bin[i] != m_bin[i] }
end

p differentRightmostBit(11, 13)   # => 2
p differentRightmostBit(7, 23)    # => 16
p differentRightmostBit(1, 0)     # => 1

# Input
# - Two integers (n, m)

# Output
# - An integer representing 2**found_bit
#   - Where found_bit is the rightmost bit that differs in the binary representation
#     of n and m

# Approach
# - Convert n and m to binary strings
# - Reverse both binary strings and pad with "0" if lengths are different
# - Iterate over one string with index
#   - If bit at idx differs, return idx
# - return 2**idx
