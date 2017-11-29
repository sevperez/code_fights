# Code Fights - The Core - Problem 3 - Candies

def candies(n, m)
  whole_pieces_per_child = m / n
  
  whole_pieces_per_child * n
end

p candies(3, 10)  # => 9
p candies(1, 2)   # => 2
p candies(10, 5)  # => 0
p candies(4, 4)   # => 4

# Input
# - An integer (n), representing the number of children
# - An integer (m), representing the number of pieces of candy

# Output
# - An integer, representing the number of pieces of candy that will be eaten in total
#   - Rules:
#     - Children must eat exactly the same amount of candy as any other

# Approach
# - Result is equal to (m / n), rounded down, * n
