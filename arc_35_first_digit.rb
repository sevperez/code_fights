# Code Fights - Arcade - Problem 35 - firstDigit

def firstDigit(inputString)
  first_dig_index = inputString.index(/\d/)
  
  inputString[first_dig_index]
end

inputString = "var_1__Int"
p firstDigit(inputString) #== '1'

inputString = "q2q-q"
p firstDigit(inputString) #== '2'

inputString = "0ss"
p firstDigit(inputString) #== '0'
