# Code Fights - Arcade - Problem 58 - Message From Binary Code

def messageFromBinaryCode(code)
  sets = split_equal_substrings(code, 8)
  
  sets.map { |set| set.to_i(2).chr }.join('')
end

def split_equal_substrings(str, substr_len)
  substrs = []
  
  str.chars.each_slice(substr_len) { |substr| substrs << substr.join('') }
  
  substrs
end

p messageFromBinaryCode("010010000110010101101100011011000110111100100001") # => "Hello!"

# Input
# - A digit string containing 0 and 1 chars representing binary code in sets of 8 bits

# Output
# - A string representing the message
#   - Rules
#     - Each set of 8 chars can be converted into base 10
#     - The base 10 number represents a character in the ASCII table

# Approach
# - Split string into an array of substrings with 8 chars each
# - Map over the array, converting each substring into base 10 numbers
# - Map over the array, converting each number into its ASCII table equivalent
# - Join the array together into a string
# - Return the result string
