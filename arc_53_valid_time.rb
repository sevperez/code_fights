# Code Fights - Arcade - Problem 53 - Valid Time

def validTime(time)
  hrs, min = time.split(":").map(&:to_i)
  
  hrs < 24 && min < 60
end

p validTime("13:58")     # => true
p validTime("25:51")     # => false
p validTime("02:76")     # => false
p validTime("24:00")     # => false


# Input
# - A string representing a time on a 24-hour clock
#   - ex. "13:56"

# Output
# - A boolean representing whether the input strin gis a valid time

# Approach
# - Split the string into hrs and minutes
# - Check if hrs < 24 && min < 60
