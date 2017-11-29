# Code Fights - The Core - Problem 9 - Reach Next Level

def reachNextLevel(experience, threshold, reward)
  experience + reward >= threshold
end

p reachNextLevel(10, 15, 5)  # => true
p reachNextLevel(10, 15, 4)  # => false
p reachNextLevel(3, 6, 4)    # => true

# Input
# - A positive integer (experience), representing your current number of points
# - A positive integer (threshold), representing the number of points needed to level up
# - A positive integer (reward), representing the number of points you will get this round

# Output
# - A boolean describing whether you will "level up" after the current round

# Approach
# - check if experience + reward >= reward
