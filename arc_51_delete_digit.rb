# Code Fights - Arcade - Problem 51 - deleteDigit

def deleteDigit(n)
  result = 0
  num_digs = n.to_s.length
  
  0.upto(num_digs - 1) do |idx|
    current = remove_digit(n, idx)
    result = current if current > result
  end
  
  result
end

def remove_digit(int, idx)
  arr = int.to_s.split('')
  arr.delete_at(idx)
  arr.join('').to_i
end

p deleteDigit(152)    # => 52
p deleteDigit(1001)   # => 101
p deleteDigit(10)     # => 1
p deleteDigit(222219) # => 22229

# Input
# - A positive integer (n)

# Output
# - An integer formed by deleting exactly one digit from n to result in the maximum
#   possible output digit.

# Approach
# - Initialize a result to 0
# - Get number of digits (n.to_s.length)
# - Loop num_digs times (providing a new idx on each iteration)
#   - On each iteration, delete the idx'th digit from n
#   - If the result is bigger than the stored biggest result, replace it
# - Return the stored result
