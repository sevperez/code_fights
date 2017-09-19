# Code Fights - Arcade - Problem 26 - evenDigitsOnly

def evenDigitsOnly(n)
  n.digits.all? { |d| d.even? }
end

n = 248622
p evenDigitsOnly(n) #== true

x = 642386
p evenDigitsOnly(x) #== false
