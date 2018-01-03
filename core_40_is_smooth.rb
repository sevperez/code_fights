# Code Fights - The Core - Problem 40 - Is Smooth?

def isSmooth(arr)
  return false if arr.first != arr.last
  
  middle = if arr.length.odd?
             arr[arr.length / 2]
           else 
             arr[arr.length / 2] + arr[(arr.length / 2) - 1]
           end
  
  arr.first == middle
end

p isSmooth([7, 2, 2, 5, 10, 7])   # => true
p isSmooth([-12, 34, 40, -5, -12, 4, 0, 0, -12])
                                  # => true
p isSmooth([-5, -5, 10])          # => false
p isSmooth([4, 2])                # => false
p isSmooth([45, 23, 12, 33, 12, 453, -234, -45])
                                  # => false

# Input
# - An array (arr)

# Output
# - A boolean describing whether arr is "smooth"
#   - Rules
#     - An array is "smooth" if its first, last, and middle elements are equal
#     - Middle is defined as:
#       - Even length: the sum of the two center elements
#       - Odd length: the center element

# Approach
# - Determine "middle"
#   - If arr.length.odd?
#     - middle
#   - Else
#     - arr[arr.length / 2] + arr[arr.length / 2 - 1]
# - Test if arr.first == arr.last && arr.first == middle
