# Code Fights - The Core - Problem 10 - Knapsack Light

def knapsackLight(value1, weight1, value2, weight2, maxW)
  if weight1 + weight2 <= maxW
    value1 + value2
  elsif (value1 > value2 && weight1 <= maxW) || (weight1 <= maxW && weight2 > maxW)
    value1
  elsif weight2 <= maxW
    value2
  else
    0
  end
end

p knapsackLight(10, 5, 6, 4, 8)     # => 10
p knapsackLight(10, 5, 6, 4, 9)     # => 16
p knapsackLight(5, 3, 7, 4, 6)      # => 7
p knapsackLight(10, 2, 11, 3, 1)    # => 0
p knapsackLight(15, 2, 20, 3, 2)    # => 15

# Input
# - Positive integers: value1, weight1, value2, weight2, maxW
#   - Representing relative values/weights of items in a treasure chest
#   - maxW representing the amount you can carry

# Output
# - A positive integer representing the max value you can take with you
#   - Rules:
#     - Only one of each item is available

# Approach
# - If weight1 + weight2 <= maxW, return value1 + value2
# - Else if value1 > value2
#   - If weight1 <= maxW, return value1
#   - Else weight2 <= maxW, return value2
# - Else
#   - If weight2 <= maxW, return value2
#   - Else return 0