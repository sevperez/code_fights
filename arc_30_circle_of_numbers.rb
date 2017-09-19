# Code Fights - Arcade - Problem 30 - Circle of Numbers

def circleOfNumbers(n, firstNumber)
  (firstNumber + n / 2) % n
end

n = 10
firstNumber = 2
p circleOfNumbers(n, firstNumber) #== 7

# approach
# -- half = n / 2 (radially opposite of 0)
# -- result = (firstNumber + half) % n
