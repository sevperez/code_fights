# Code Fights - The Core - Problem 46 - Pages Numbering with Ink

def pagesNumberingWithInk(current, numberOfDigits)
  loop do
    current_digs = get_num_digs(current)
    numberOfDigits -= current_digs
    break if (get_num_digs(current + 1) > numberOfDigits)
    current += 1
  end
  
  current
end

def get_num_digs(int)
  int.to_s.length
end

p pagesNumberingWithInk(1, 5)           # => 5
p pagesNumberingWithInk(21, 5)          # => 22
p pagesNumberingWithInk(8, 4)           # => 10
p pagesNumberingWithInk(21, 6)          # => 23

# Input
# - An integer (current) representing the current 
# - An integer (numberOfDigits) representing the number of digits left that you can print

# Output
# - An integer representing the number on the last page that can be fully numbered
#   - Rules:
#     - The first page to start numbering with remaining digits is (current)
#     - A page is fully numbered if all of its digits are printed

# Approach
# - loop
#   - current_digs = number of digits in current
#   - numberOfDigits -= current_digs
#   - break if (getNumDigs(current + 1) > numberOfDigits)
#   - current += 1
# - return current
