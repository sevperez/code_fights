# Code Fights - The Core - Problem 29 - Addition Without Carrying

def additionWithoutCarrying(param1, param2)
  param1 = param1.to_s
  param2 = param2.to_s
  longest = param1.length > param2.length ? param1.length : param2.length
  
  param1 = param1.rjust(longest, "0") if param1.length < longest
  param2 = param2.rjust(longest, "0") if param2.length < longest
  
  result = ""
  param1.each_char.with_index do |d, idx|
    current = d.to_i + param2[idx].to_i
    
    result += current.to_s[-1]
  end
  
  result.to_i
end

p additionWithoutCarrying(456, 1734)  # => 1180
p additionWithoutCarrying(99999, 0)   # => 99999
p additionWithoutCarrying(999, 999)   # => 888
p additionWithoutCarrying(0, 0)       # => 0

# Input
# - Two integers

# Output
# - An integer representing the sum of the two input integers, with carrying ignored

# Approach
# - Convert each number to a string
# - Determine the longest string
# - Left pad the number strings with 0s so they are equal length
# - Loop length times
#   - On each iteration, add the numbers together and push the rightmost digit 
#     to a result string
# - Convert the result string to an integer and return
