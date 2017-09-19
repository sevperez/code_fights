# Code Fights - Arcade - Problem 17 - arrayChange

def arrayChange(inputArray)
  moves = 0
  
  1.upto(inputArray.length - 1) do |idx|
    while inputArray[idx] <= inputArray[idx - 1]
      difference = inputArray[idx - 1] - inputArray[idx]
      
      inputArray[idx] += (difference + 1)
      moves += (difference + 1)
    end
  end
  
  moves
end

inputArray = [1, 1, 1]
p arrayChange(inputArray) # == 3

inputArray = [10, 1, 1]
p arrayChange(inputArray) # == 20001