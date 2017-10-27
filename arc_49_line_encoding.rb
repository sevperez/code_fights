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
