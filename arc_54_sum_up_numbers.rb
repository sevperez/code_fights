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

# Problem
# CodeMaster has just returned from shopping. He scanned the check of the items 
# he bought and gave the resulting string to Ratiorg to figure out the total 
# number of purchased items. Since Ratiorg is a bot he is definitely going to 
# automate it, so he needs a program that sums up all the numbers which appear 
# in the given input.

# Help Ratiorg by writing a function that returns the sum of numbers that appear 
# in the given inputString.

# Example

# For inputString = "2 apples, 12 oranges", the output should be
# sumUpNumbers(inputString) = 14.
