# Code Fights - The Core - Problem 45 - Square Digits Sequence

def squareDigitsSequence(a0)
  sequence = [a0]
  
  loop do
    break if sequence.length > 1 && sequence.uniq.length != sequence.length
    ele = squareDigits(sequence.last)
    sequence << ele
  end
  
  return sequence.length
end

def squareDigits(int)
  int.to_s.split("").map do |d|
    d.to_i**2
  end.reduce(:+)
end

p squareDigitsSequence(1)         # => 2
p squareDigitsSequence(103)       # => 4
p squareDigitsSequence(16)        # => 9

# Input
# - An integer (a0)
#   - Where 1 <= a0 <= 650

# Output
# - An integer representing the length of a sequence of square digits
#   - Rules
#     - A sequence is made of of elements where each element is equal to the 
#       square of the digits in the previous element
#     - The sequence ends when a number appears that is already in the sequence
#     - Ex. a0 = 16
#       - [16, 37, 58, 89, 145, 42, 20, 4, 16]  # => length = 9

# Approach
# - Set sequence to [a0]
# - loop
#   - break if sequence.uniq.length != sequence.length
#   - ele = squareDigits(sequence.last)
#     - squareDigits method
#       - convert ele to string
#       - split string into dig chars
#       - convert digs back into ints
#       - return sum of ints
#   - push ele to sequence
# - return sequence.length
