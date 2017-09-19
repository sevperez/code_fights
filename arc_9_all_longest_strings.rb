# Code Fights - Arcade - Problem 8 - allLongestStrings(inputArray)

def allLongestStrings(inputArray)
  longest = inputArray.sort_by { |ele| ele.length }.last.length
  
  inputArray.select { |ele| ele.length == longest }
end

inputArray = ["aba", "aa", "ad", "vcd", "aba"]

p allLongestStrings(inputArray) #= ["aba", "vcd", "aba"]