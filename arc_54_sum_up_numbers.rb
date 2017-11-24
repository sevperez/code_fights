# Code Fights - Arcade - Problem 54 - sumUpNumbers

def sumUpNumbers(inputString)
  nums = inputString.split(/[^0-9]+/).map(&:to_i)
  
  nums.reduce(:+) || 0
end

p sumUpNumbers("2 apples, 12 oranges")              # => 14
p sumUpNumbers("123450")                            # => 123450
p sumUpNumbers("Your payment method is invalid")    # => 0


# Input
# - A string of length >= 6 and <= 60 containing any valid characters

# Output
# - An integer representing the sum of any valid integers inside the input string

# Approach
# - Split the string at any non-digit characters, resuling in an array of digits
# - Map over the array converting each to inters
# - Reduce the array to get the sum
