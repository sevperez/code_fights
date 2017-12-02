# Code Fights - The Core - Problem 25 - Least Factorial

def leastFactorial(n)
  k = 1
  m = 1
  
  loop do
    k *= m
    return k if k >= n
    m += 1
  end
end

p leastFactorial(17)    # => 24
p leastFactorial(1)     # => 1
p leastFactorial(5)     # => 6

# Input
# - An integer (n)

# Output
# - An integer (k) where:
#   - k = m! (where m is some int)
#   - k >= n
#   - That is, k is the smallest factorial that is >= n

# Approach
# - Set m to 1
# - Set k to 1
# - Loop
#   - k *= m
#   - return k if k >= n
#   - m += 1
