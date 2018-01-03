# Code Fights - The Core - Problem 35 - Create Array

def createArray(size)
  Array.new(size, 1)
end

p createArray(4)    # => [1, 1, 1, 1]
p createArray(2)    # => [1, 1]

# Input
# - An integer (size)

# Output
# - An array of length (size), filled with 1s

# Approach
# - Array creation with defaults
