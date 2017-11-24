# Code Fights - Arcade - Problem 52 - longestWord

def longestWord(text)
  words = text.split(/[^a-z]+/i)
  
  max_length = words[0].length
  longest_word = words[0]
  
  words[1..-1].each do |word|
    current_length = word.length
    
    if current_length > max_length
      max_length = current_length
      longest_word = word
    end
  end
  
  longest_word
end

p longestWord("ready, steady, go!")       # => "steady"
p longestWord("Ready[[[, steady, go!")    # => "steady"
p longestWord("ABCd")                     # => "ABCd"


# Input
# - A string

# Output
# - A string representing the longest "word" in the input string
#   - Rules:
#     - A word is considered a string of consecutive English letters

# Approach
# - Set max length to 0, longest word to ''
# - Split string into valid words (split point at anything except [a-z])
# - Iterate over word array, checking length of each
#   - If length is greater than current maxlength
#     - Update longest word and max length
# - Return longest word
