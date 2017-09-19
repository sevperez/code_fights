# Code Fights - Arcade - Problem 16 - Are Similar?

def areSimilar(a, b)
  differences = get_differences(a, b)
  
  return true if differences.values.all? { |arr| arr.empty? }
  return false unless differences.values.all? { |arr| arr.length == 2 }
  
  differences[:arr1_diffs].sort == differences[:arr2_diffs].sort
end

def get_differences(arr1, arr2)
  differences = { arr1_diffs: [], arr2_diffs: [] }
  
  arr1.each_with_index do |ele, idx|
    if ele != arr2[idx]
      differences[:arr1_diffs] << ele
      differences[:arr2_diffs] << arr2[idx]
    end
  end
  
  differences
end

a = [1, 2, 3]
b = [1, 2, 3]
p areSimilar(a, b) # == true

c = [1, 2, 3]
d = [2, 1, 3]
p areSimilar(c, d) # == true

e = [1, 2, 2]
f = [2, 1, 1]
p areSimilar(e, f) # == false
