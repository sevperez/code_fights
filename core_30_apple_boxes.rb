# Code Fights - The Core - Problem 30 - Apple Boxes

def appleBoxes(k)
  num_red_apples = 0
  num_yellow_apples = 0
  
  1.upto(k) do |m|
    if m.odd?
      num_yellow_apples += m * m
    else
      num_red_apples += m * m
    end
  end
  
  num_red_apples - num_yellow_apples
end

p appleBoxes(5)     # => -15
p appleBoxes(15)    # => -120
p appleBoxes(36)    # => 666


# Input
# - An integer (k) representing the number of apple boxes you have

# Output
# - An integer representing the difference between number of red and yellow apples
#   - Rules
#     - The boxes range in size (m) from 1 to k
#     - Each box contains m * m apples
#     - Odd sized boxes contain only yellow apples
#     - Even sized boxes contain only red apples

# Approach
# - Initialize num red apples and num yellow apples to 0
# - Loop from 1 to k (inclusive)
#   - If current (m) is odd, increment num yellow apples by n * n
#   - Else, increment num red apples by n * n
# - Return num red - num yellow
