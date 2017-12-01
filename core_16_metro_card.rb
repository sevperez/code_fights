# Code Fights - The Core - Problem 16 - Metro Card

def metroCard(lastNumberOfDays)
  if lastNumberOfDays == 30
    [31]
  elsif lastNumberOfDays == 31
    [28, 30, 31]
  else
    [31]
  end
end

p metroCard(30) # => [31]
p metroCard(31) # => [28, 30, 31]
p metroCard(28) # => [31]

# Input
# - An integer (lastNumberOfDays) representing the number of days in the previous month

# Output
# - An array of integers representing the possibly number of days in the current month

# Approach
# - Test the following:
#   - If lastNumberOfDays == 30, return [31]
#   - Else if lastNumberOfDays == 31, return [28, 30, 31]
#   - Else, return [31]
