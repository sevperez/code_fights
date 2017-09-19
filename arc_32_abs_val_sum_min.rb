# Code Fights - Arcade - Problem 32 - absoluteValuesSumMinimization

def absoluteValuesSumMinimization(a)
  candidates = [median(a), mode(a)].flatten.uniq
  candidates.sort_by! { |candidate| check_value(candidate, a) }
  
  candidates.first
end

def check_value(candidate, arr)
   arr.map { |ele| (ele - candidate).abs }.reduce(:+)
end

def mode(arr)
  return nil if arr.empty?

  sorted = arr.sort_by { |ele| arr.count(ele) }
  max_count = sorted.count(sorted[-1])
  
  sorted.select { |ele| sorted.count(ele) == max_count }
end

def median(arr)
  return nil if arr.empty?
  
  middle = arr.length / 2
  arr.length.odd? ? arr[middle] : [arr[middle - 1], arr[middle]]
end

a = [2, 4, 7]
p absoluteValuesSumMinimization(a) == 4

a = [1, 1, 3, 4]
p absoluteValuesSumMinimization(a) == 1

a = [23]
p absoluteValuesSumMinimization(a) == 23


a = [-10, -10, -10, -10, -10, -9, -9, -9, -8, -8, 
     -7, -6, -5, -4, -3, -2, -1, 0, 0, 0, 0, 1, 2, 
     3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 
     16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 
     27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 
     38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
     49, 50]
p absoluteValuesSumMinimization(a)== 15

a = [-4, -1]
p absoluteValuesSumMinimization(a) == -4


a = [0, 7, 9]
p absoluteValuesSumMinimization(a) == 7

a = [-1000000, -10000, -10000, -1000, -100, -10, -1,
     0, 1, 10, 100, 1000, 10000, 100000, 1000000]
p absoluteValuesSumMinimization(a) == 0

a = [-1000000, -10000, -10000, -1000, -100, -10, -1, 
     0, 1, 10, 100, 100, 200, 300, 400, 450, 450, 450, 
     450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 
     450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 
     450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 
     450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 
     450, 450, 450, 450, 450, 450, 450, 500, 500, 500, 
     500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 
     500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 
     500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 
     500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 
     500, 500, 500, 500, 500, 500, 600, 700, 800, 900, 
     1000, 10000, 100000, 1000000]
p absoluteValuesSumMinimization(a) == 450

