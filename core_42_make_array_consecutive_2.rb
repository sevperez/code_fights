# Code Fights - The Core - Problem 42 - Make Array Consecutive - 2

def makeArrayConsecutive2(statues)
  statues.sort!
  diff = statues.last - statues.first
  
  diff - statues.length + 1
end

p makeArrayConsecutive2([6, 2, 3, 8])               # => 3
p makeArrayConsecutive2([0, 3])                     # => 2
p makeArrayConsecutive2([5, 4, 6])                  # => 0
p makeArrayConsecutive2([6, 3])                     # => 2
p makeArrayConsecutive2([1])                        # => 0

# Input
# - An array (statues) of integers between (inclusive) 0 and 20

# Output
# - An integer representing the number of statues required to make (statues) consecutive
#   - Rules:
#     - The desired end state is that the array should be filled with elements 
#       incrementing by 1.
#     - ex. [0, 3]  => [0, 1, 2, 3]

# Approach
# - Sort array
# - Get difference between last - first
# - Return diff - arr.length + 1

