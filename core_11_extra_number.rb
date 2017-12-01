# Code Fights - The Core - Problem 11 - Extra Number

def extraNumber(a, b, c)
  if a == b
    c
  elsif a == c
    b
  else
    a
  end
end

p extraNumber(2, 7, 2)   # => 7
p extraNumber(3, 2, 2)   # => 3
p extraNumber(5, 5, 1)   # => 1

# Input
# - Three integers, two of which are equal to one another

# Output
# - An integer, representing the input value that does not have a duplicate input

# Approach
# - If a == b, return c
# - Else if a == c, return b
# - Else, return a
