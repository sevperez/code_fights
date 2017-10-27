# Code Fights - Arcade - Problem 48 - isDigit

def isDigit(symbol)
  /[0-9]/.match?(symbol)
end

p isDigit('1') # => true
p isDigit('2') # => true
p isDigit('3') # => true
p isDigit('4') # => true
p isDigit('5') # => true
p isDigit('6') # => true
p isDigit('_') # => false
p isDigit('a') # => false
p isDigit('O') # => false
p isDigit('$') # => false
p isDigit('-') # => false
p isDigit('E') # => false

# Input
# - A string of one character in length

# Output
# - A boolean describing whether the provided character was a digit or not
