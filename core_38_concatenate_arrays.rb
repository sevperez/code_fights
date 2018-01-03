# Code Fights - The Core - Problem 38 - Concatenate Arrays

def concatenateArrays(a, b)
  a.concat(b)
end

p concatenateArrays([2, 2, 1], [10, 11])    # => [2, 2, 1, 10, 11]
p concatenateArrays([1, 2], [3, 1, 2])      # => [1, 2, 3, 1, 2]
p concatenateArrays([1], [])                # => [1]
p concatenateArrays([2, 10, 3, 9, 5, 11, 11], [4, 8, 1, 13, 3, 1, 14])       
                                            # => [2, 10, 3, 9, 5, 11, 11, 4, 8, 1, 13, 3, 1, 14]

# Input
# - An array (a) and an array (b) of integers

# Output
# - An array of (a) elements followed by (b) elements

# Approach
# - a.concat(b)
