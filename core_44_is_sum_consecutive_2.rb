# Code Fights - The Core - Problem 44 - Is Sum of Consecutive 2

def isSumOfConsecutive2(n)
  counter = 0
  mid = (n / 2).ceil
  
  1.upto(mid) do |i|
    m = i + 1
    arr = [i, m]
    
    loop do
      res = arr.reduce(:+)
      if res == n
        counter += 1
        break
      elsif res > n
        break
      else
        m += 1
        arr << m
      end
    end
  end
  
  counter
end

p isSumOfConsecutive2(9)          # => 2
p isSumOfConsecutive2(8)          # => 0
p isSumOfConsecutive2(15)         # => 3

# Input
# - A positive integer (n) 
#   - Where 1 <= n <= 25

# Output
# - An integer representing the number of ways to express n as the sum of consecutive integers
#   - Rules:
#     - For n = 9, output = 2
#       - 2 + 3 + 4 = 9; and, 4 + 5 = 9

# Approach
# - Set counter to 0
# - Set mid to n / 2.ceil - 1
# - Loop from 1 to mid
#   - Set m to i + 1
#   - Set arr to [i, m]
#   - Loop
#     - if arr.reduce(:+) == n
#       - Increment counter
#       - Break
#     - else if arr.reduce(:+) > n
#       - Break
#     - else
#       - m += 1
#       - arr << m
# - Return counter
      
