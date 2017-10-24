# Code Fights - Arcade - Problem 39 - Knapsack Light

def knapsackLight(value1, weight1, value2, weight2, maxW)
  if weight1 + weight2 <= maxW
    value1 + value2
  elsif weight1 <= maxW && (value1 >= value2 || weight2 > maxW)
    value1
  elsif weight2 <= maxW
    value2
  else
    0
  end
end

p knapsackLight(10, 5, 6, 4, 8) # => 10
p knapsackLight(10, 5, 6, 4, 9) # => 16
p knapsackLight(5, 3, 7, 4, 6)  # => 7

# Input
# - Five integers representing:
#   - Value 1
#   - Weight 1
#   - Value 2
#   - Weight 2
#   - max weight

# Output
# - An integer representing the maximum value you can take with you
#   - Rules:
#     - Can only take items weight up to max weight
#     - Can only take one of each item type

# Approach
# - If weight1 + weight2 <= maxW
#   - Return val1 + val2
# - Else if weight1 <= maxW && val1 >= val2
#   - Return val2
# - Else if weight2 <= maxW
#   - Return val2
# - Else 
#   - Return 0
