# Code Fights - The Core - Problem 19 - Range Bit Count

def rangeBitCount(a, b)
  (a..b).to_a.map { |int| int.to_s(2) }.join("").count("1")
end

p rangeBitCount(2, 7)    # => 11
p rangeBitCount(0, 1)    # => 1
p rangeBitCount(1, 10)   # => 17

# Input
# - Two integers (a, b), where 0 <= a <= b

# Output
# - An integer representing the number of 1s in the binary representation of all
#   integers in the range a..b, inclusive

# Approach
# - Build range from a-b, inclusive
# - Map range into binary strings
# - Join into a single string
# - Count number of "1" chars in the joined string and return
