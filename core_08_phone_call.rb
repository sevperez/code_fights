# Code Fights - The Core - Problem 8 - Phone Call

def phoneCall(min1, min2_10, min11, s)
  return 0 if s < min1
  
  counter = 0
  
  loop do
    counter += 1
    
    if counter == 1
      s -= min1
      break if s < min2_10
    elsif counter <= 10
      s -= min2_10
      break if counter < 10 ? s < min2_10 : s < min11
    else
      s -= min11
      break if s < min11
    end
    
  end
  
  counter
end

p phoneCall(3, 1, 2, 20)    # => 14
p phoneCall(2, 2, 1, 2)     # => 1
p phoneCall(10, 1, 2, 22)   # => 11
p phoneCall(2, 2, 1, 24)    # => 14
p phoneCall(1, 2, 1, 6)     # => 3

# Input
# - A positive integer (min1), representing the cost (cents) of the first minute of a call
# - A positive integer (min2_10), representing the cost (cents) of minutes 2-10 of a call
# - A positive integer (min11), representing the cost (cents) of minutes 11+ of a call
# - A positive integer (s), representing the number of cents in your account

# Output
# - An integer, representing the number of minutes you can speak
#   - Rounded down to closest integer

# Approach
# - Set initial counter to 0
# - Loop
#   - Increment counter
#   - If counter == 1
#     - s -= min1
#   - Else if counter <= 10
#     - s -= min2_10
#   - Else
#     - s -= min11
#   - Break if s < 0
# - Return counter
