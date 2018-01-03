# Code Fights - The Core - Problem 36 - Array Replace

def arrayReplace(inputArray, elemToReplace, substitutionElem)
  inputArray.map { |ele| ele == elemToReplace ? substitutionElem : ele }
end

p arrayReplace([1, 2, 1], 1, 3)         # => [3, 2, 3]
p arrayReplace([1, 2, 3, 4, 5], 3, 0)   # => [1, 2, 0, 4, 5]
p arrayReplace([1, 1, 1], 1, 10)        # => [10, 10, 10]

# Input
# - An array (inputArray) of integers
# - An integer (elemToReplace)
# - An integer (substitutionElem)

# Output
# - An array where each elemToReplace in inputArray has been replaced with substitutionElem

# Approach
# - Map over array
#   - If ele == elemToReplace, return substitutionElem
#   - Else, return ele
  
