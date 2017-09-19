# Code Fights - Arcade - Problem 27 - variableName

def variableName(name)
  result = /^[A-Za-z_]{1}\w*/.match(name)
  result != nil && result[0] == name
end

name = "var_1__Int"
p variableName(name) #== true

name = "qq-q"
p variableName(name) #== false

name = "2w2"
p variableName(name) #== false
