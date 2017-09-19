# Code Fights - Arcade - Problem 20 - arrayMaximalAdjacentDifference

def arrayMaximalAdjacentDifference(inputArray)
  max = 0
  
  inputArray.each_with_index do |ele, idx|
    next if idx == 0
    
    abs_adj_diff = (ele - inputArray[idx - 1]).abs
    
    max = abs_adj_diff if abs_adj_diff > max
  end
  
  max
end

inputArray = [2, 4, 1, 0]
p arrayMaximalAdjacentDifference(inputArray) #== 3
