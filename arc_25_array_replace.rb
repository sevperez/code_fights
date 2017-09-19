# Code Fights - Arcade - Problem 25 - Array Replace

def arrayReplace(inputArray, elemToReplace, substitutionElem)
  inputArray.map { |ele| ele == elemToReplace ? substitutionElem : ele }
end

inputArray = [1, 2, 1]
elemToReplace = 1
substitutionElem = 3
p arrayReplace(inputArray, elemToReplace, substitutionElem) #== [3, 2, 3]
