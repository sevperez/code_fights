# Code Fights - Arcade - Problem 43 - isBeautifulString

ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def isBeautifulString(inputString)
  alpha_chars = ALPHABET.chars
  alpha_char_count = alpha_chars.map { |c| inputString.count(c) }
  
  alpha_char_count == alpha_char_count.sort.reverse
end

p isBeautifulString("bbbaacdafe")     # => true
p isBeautifulString("aabbb")          # => false
p isBeautifulString("bbc")            # => false


# Input
# - A string of indeterminate length

# Output
# - A boolean describing whether the input string is "beautiful"
#   - Rules
#     - A string is beautiful if 'b' occurs no more than 'a', and 'c' no more than 'b', etc

# Approach
# - Split alphabet into an array of chars
# - Map over array, transforming each element into an integer representing char_count
#   in the input string
# - Check if the array is already reverse sorted
#   - If true, input string is beautiful