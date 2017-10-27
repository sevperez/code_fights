# Code Fights - Arcade - Problem 45 - buildPalindrome

def buildPalindrome(st)
  num_added = 0
  
  until isPalindrome(st)
    st = st.insert(st.length - num_added, st[0 + num_added])
    num_added += 1
  end
  
  return st
end

def isPalindrome(st)
  st == st.reverse
end

p buildPalindrome("abcdc") == "abcdcba"
p buildPalindrome("ababab") == "abababa"
p buildPalindrome("abba") == "abba"
p buildPalindrome("abaa") == "abaaba"

# Input
# - A string

# Output
# - A palindrome string of the shortest possible length, building on the input string

# Approach
# - Set num letters added to 0
# - While !isPalindrome
#   - Add letter at idx 0 + num added to idx at st.length - num added

