# Code Fights - The Core - Problem 37 - First Reverse Try

def firstReverseTry(arr)
  return arr if arr.empty? || arr.length === 1
  
  ele = arr.first
  arr[0] = arr.last
  arr[-1] = ele
  
  arr
end

p firstReverseTry([1, 2, 3, 4, 5])       # => [5, 2, 3, 4, 1]
p firstReverseTry([])                    # => []
p firstReverseTry([239])                 # => [239]
p firstReverseTry([23, 54, 12, 3, 4, 56, 23, 12, 5, 324])
                                         # => [324, 54, 12, 3, 4, 56, 23, 12, 5, 23]

# Input
# - An array (arr)

# Output
# - An array where the first and last elements of (arr) have been switched

# Approach
# - Store first element of arr in a variable
# - Replace first element of arr with last element
# - Replace last element of arr with the stored variable
# - Return arr
