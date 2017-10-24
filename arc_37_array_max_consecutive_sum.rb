# Code Fights - Arcade - Problem 37 - arrayMaxConsecutiveSum

def arrayMaxConsecutiveSum(inputArray, k)
  highest_sum = 0
  
  subArr = inputArray.slice(0, inputArray.length - k + 1)
  
  subArr.each_with_index do |_, idx|
    current_sum = inputArray.slice(idx, k).reduce(:+)
    highest_sum = current_sum if current_sum > highest_sum
  end
  
  return highest_sum
end

p arrayMaxConsecutiveSum([2, 3, 5, 1, 6], 2)  # => 8
