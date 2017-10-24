# Code Fights - Arcade - Problem 40 - longestDigitsPrefix

def longestDigitsPrefix(inputString)
  return "" unless inputString[0] =~ /[0-9]/
  
  idx_first_non_dig = inputString.index(/[^0-9]/) || inputString.length
  
  inputString[0..idx_first_non_dig - 1]
end

p longestDigitsPrefix("123aa1");        # "123"
p longestDigitsPrefix("0123456789")     # "0123456789"
p longestDigitsPrefix("  3) always check for whitespaces")    #  ""
p longestDigitsPrefix("the output is 42")   # ""
