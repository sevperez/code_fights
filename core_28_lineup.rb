# Code Fights - The Core - Problem 28 - Lineup

def lineUp(commands)
  correct = 0
  incorrect = 0
  counter = 0
  
  commands.each_char do |c|
    if c == "R"
      correct = (correct + 1) % 4
      incorrect = (incorrect - 1) % 4
    elsif c == "L"
      correct = (correct - 1) % 4
      incorrect = (incorrect + 1) % 4
    else
      correct = (correct + 2) % 4
      incorrect = (incorrect + 2) % 4
    end
    
    counter += 1 if correct == incorrect
  end
  
  counter
end

p lineUp("LLARL")   # => 3
p lineUp("RLR")     # => 1
p lineUp("")        # => 0

# Input
# - A string consisting of the characters "L" (left), "R" (right), and "A" (around),
#   each of which represents a command to a lineup of students

# Output
# - An integer representing the number of commands that will result in all of the 
#   students facing the same direction.
#   - Rules:
#     - At least one student always turns right when he should turn left, and left
#       when he should turn right.

# Approach
# - Initialize two direction variables to 0 (front)
# - Iterate over the command string
#   - On each iteration, adjust the direction variables
#     - correct: L: -1; R: +1; A: +2
#     - incorrect: L: +1; R: -1; A: +2
#     - If correct === incorrect, increment match counter

