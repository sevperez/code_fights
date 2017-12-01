# Code Fights - The Core - Problem 13 - Arithmetic Expression

def arithmeticExpression(a, b, c)
  (a + b == c) || (a - b == c) || (a * b == c) || (a / b.to_f == c)
end

p arithmeticExpression(2, 3, 5)   # => true
p arithmeticExpression(8, 2, 4)   # => true
p arithmeticExpression(6, 3, 3)   # => true
p arithmeticExpression(18, 2, 9)  # => true
p arithmeticExpression(8, 3, 2)   # => false
p arithmeticExpression(5, 2, 0)   # => false

# Input
# - Three integers (a, b, c)

# Output
# - A boolean, describing whether the formula (a # b = c) can possibly return true,
#   assuming that (#) may be replaced with any arithmetic operator (+, -, *, /)

# Approach
# - Test each possible operator
#   - If one is true, return true
#   - Else return false
