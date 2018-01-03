# Code Fights - The Core - Problem 39 - Remove Array Part

def removeArrayPart(inputArray, l, r)
  inputArray.slice!(l..r)
  
  inputArray
end

p removeArrayPart([2, 3, 2, 3, 4, 5], 2, 4)     # => [2, 3, 5]
p removeArrayPart([2, 4, 10, 1], 0, 2)          # => [1]
p removeArrayPart([5, 3, 2, 3, 4], 1, 1)        # => [5, 2, 3, 4]

# Input
# - An array (inputArray)
# - An integer (l) and an integer (r) representing 0-based indices

# Output
# - An array where indices between (and including) l and r have been removed from inputArray

# Approach
# - Slice (l..r) from inputArray
# - Return remaining portion of inputArray
