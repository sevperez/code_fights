# Code Fights - The Core - Problem 24 - Equal Pair of Bits

def equalPairOfBits(n, m)
  2**find_pos(n, m)
end

def find_pos(n, m)
  rev_n_bin = n.to_s(2).reverse
  rev_m_bin = m.to_s(2).reverse
  
  counter = 0
  loop do
    break if rev_n_bin[counter] == rev_m_bin[counter] ||
      rev_n_bin[counter].nil? ||
      rev_m_bin[counter].nil?
    counter += 1
  end
  
  counter
end

p equalPairOfBits(10, 11)     # => 2
p equalPairOfBits(0, 0)       # => 1
p equalPairOfBits(28, 27)     # => 8
p equalPairOfBits(895, 928)   # => 32
p equalPairOfBits(536870911, 1073741824)    # => 536870912

# Input
# - Two integers (n, m)

# Output
# - An integer representing 2**pos
#   - Where pos is equal to the index of the rightmost pair of equal bits
#   - Where index starts at 0 on the right side

# Approach
# - Convert n and m to binary strings
# - Reverse each string
# - Set counter to 0
# - Loop up from counter
# - If pairs of bits at current idx match, return
#   - Else, increment counter
