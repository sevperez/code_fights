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

# Problem
# Consider a sequence of numbers a0, a1, ..., an, in which an element is equal 
# to the sum of squared digits of the previous element. The sequence ends once 
# an element that has already been in the sequence appears again.

# Given the first element a0, find the length of the sequence.

# Example

# For a0 = 16, the output should be
# squareDigitsSequence(a0) = 9.

# Here's how elements of the sequence are constructed:

# a0 = 16
# a1 = 1**2 + 6**2 = 37
# a2 = 3**2 + 7**2 = 58
# a3 = 5**2 + 8**2 = 89
# a4 = 8**2 + 9**2 = 145
# a5 = 1**2 + 4**2 + 52 = 42
# a6 = 4**2 + 2**2 = 20
# a7 = 2**2 + 0**2 = 4
# a8 = 4**2 = 16, which has already occurred before (a0)
# Thus, there are 9 elements in the sequence.

# For a0 = 103, the output should be
# squareDigitsSequence(a0) = 4.

# The sequence goes as follows: 103 -> 10 -> 1 -> 1, 4 elements altogether.
