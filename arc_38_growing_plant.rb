# Code Fights - Arcade - Problem 38 - growingPlant

def growingPlant(upSpeed, downSpeed, desiredHeight)
  num_days = 0
  height = 0
  
  while height < desiredHeight
    height += upSpeed
    num_days += 1
    break if height >= desiredHeight
    height -= downSpeed
  end
  
  num_days
end

p growingPlant(100, 10, 910)  # => 10
p growingPlant(10, 9, 4) # => 1

# Input
# - Three integers:
#   - upSpeed (rate at which plant grows per day)
#   - downSpeed (rate at which plant shrinks per day)
#   - desiredHeight

# Output
# - An integer (num days for the plan to reach/pass desired height)

# Approach
# - Set num days to 0
# - Set height to 0
# - while
#   - height < desired height
#   - add upspeed
#   - increment num days
#   - break if height >= desired
#   - subtract downspeed
# - Return num days
