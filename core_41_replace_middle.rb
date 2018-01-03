# Code Fights - The Core - Problem 41 - Replace Middle

def replaceMiddle(arr)
  if arr.length.even?
    middle = arr[arr.length / 2] + arr[(arr.length / 2) - 1]
    arr[(arr.length / 2) - 1] = middle
    arr.delete_at(arr.length / 2)
  end
  
  arr
end

p replaceMiddle([7, 2, 2, 5, 10, 7])      # => [7, 2, 7, 10, 7]
p replaceMiddle([-5, -5, 10])             # => [-5, -5, 10]
p replaceMiddle([45, 23, 12, 33, 12, 453, -234, -45])
                                          # => [45, 23, 12, 45, 453, -234, -45]

# Input
# - An array (arr)

# Output
# - An array where the "middle" of arr has been transformed as follows
#   - If arr.length.odd?
#     - no change
#   - Else
#     - middle = arr[arr.length / 2] + arr[(arr.length / 2) - 1]
#     - arr[(arr.length / 2) - 1] = middle
#     - delete arr[arr.length / 2]

# Approach
# - If arr.length.odd?, no change
# - Else
#   - Set value of "Middle"
#   - Transform middle two elements per rules
# - Return arr
