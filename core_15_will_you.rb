# Code Fights - The Core - Problem 15 - Will You?

def willYou(young, beautiful, loved)
  ((!young || !beautiful) && loved) || (young && beautiful && !loved)
end

p willYou(true, false, true)      # => true
p willYou(false, false, true)     # => true
p willYou(true, true, true)       # => false
p willYou(false, false, false)    # => false

# Input
# - Three booleans (young, beautiful, loved)

# Output
# - A boolean describing whether the three inputs do not contradict the following:
#   - loved can only be true if both young and beautiful are true

# Approach
# - Test the following conditions to see if they contradict the statement
#   - ((!young || !beautiful) && loved) || (young && beautiful && !loved)
