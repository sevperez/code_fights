# Code Fights - Arcade - Problem 34 - extractEachKth

def extractEachKth(arr, k)
  arr.map.with_index { |ele, idx| (idx + 1) % k == 0 ? nil : ele }.compact
end

inputArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3

p extractEachKth(inputArray, k) #== [1, 2, 4, 5, 7, 8, 10]

inputArray = [1, 1, 1, 1, 1]
k = 1

p extractEachKth(inputArray, k) #== []

inputArray = [1, 2, 1, 2, 1, 2, 1, 2]
k = 2

p extractEachKth(inputArray, k) #== [1, 1, 1, 1]

