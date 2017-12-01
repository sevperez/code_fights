# Code Fights - The Core - Problem 18 - Array Packing

def arrayPacking(a)
  a.map { |int| int.to_s(2).rjust(8, "0") }.reverse.join("").to_i(2)
end

p arrayPacking([24, 85, 0])     # => 21784
p arrayPacking([23, 45, 39])    # => 2567447

# Input
# - An array of up to four positive integers, each less than 256

# Output
# - An integer (M)
#   - Rules:
#     - M is built by joining the 8 bits of each provided integer together,
#       from right to left

# Approach
# - Map the input array into binary strings
# - Reverse the array
# - Join the array
# - Convert the result back to a base 10 integer
