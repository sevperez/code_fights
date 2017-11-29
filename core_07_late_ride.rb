# Code Fights - The Core - Problem 7 - Late Ride

def lateRide(n)
  hours, min = n.divmod(60)
  
  digSum(hours) + digSum(min)
end

def digSum(int)
  int.to_s.split('').map(&:to_i).reduce(:+)
end

p lateRide(240)    # => 4
p lateRide(808)    # => 14
p lateRide(1439)   # => 19
p lateRide(0)      # => 0
p lateRide(23)     # => 5

# Input
# - An integer (n) representing the number of minutes passed since 00:00
#   - Guaranteed to be less than one full day (1440 min)

# Output
# - An integer representing the sum of the digits of the current time (hh:mm)

# Approach
# - calculate hours and minutes
#   - hours, min = n.divmod(60)
# - convert hours and minutes to sum of their digits
#   - convert to string
#   - split string by char
#   - map char to int
#   - reduce by sum
# - return sum
