# Code Fights - Arcade - Problem 49 - lineEncoding

def lineEncoding(s)
  substrings = []
  
  s.each_char.with_index do |c, idx|
    if idx == 0
      substrings << c
    elsif c == substrings[substrings.length - 1][0]
      substrings[substrings.length - 1] += c
    else
      substrings << c
    end
  end
  
  substrings.map do |substr|
    "#{substr.length if substr.length > 1}#{substr[0]}"
  end.join
end

p lineEncoding('aabbbc')  # => '2a3bc'
p lineEncoding('abbcabb') # => 'a2bca2b'
p lineEncoding('abcd')    # => 'abcd'

# Input
# - A string of length >= 4 and <= 15
# - String made entirely of lowercase English letters

# Output
# - A string representing an "encoded" version of the input string
#   - Rules
#     - Strings are broken into substrings of consecutive identical characters
#     - Sets of identical characters (ex. 'aaa') are represented by a digit
#       followed by one of the character (ex. '3a')


# Approach
# - Initialize a substring array
# - Iterate over the string by character
#   - If idx is 0, push char to arr
#   - If the character is the same as those in the last substring
#     - Push character to that substring
#     - Else
#       - Push char to arr
# - Map over substring array
#   - If length > 1, transform to "#{length}{char}"
# - Join substring array together and return


# Problem
# Given a string, return its encoding defined as follows:

# First, the string is divided into the least possible number of disjoint 
# substrings consisting of identical characters for example, "aabbbc" is divided 
# into ["aa", "bbb", "c"]

# Next, each substring with length greater than one is replaced with a concatenation 
# of its length and the repeating character for example, substring "bbb" is 
# replaced by "3b"

# Finally, all the new strings are concatenated together in the same order and a 
# new string is returned.

# For s = "aabbbc", the output should be:
# lineEncoding(s) = "2a3bc".