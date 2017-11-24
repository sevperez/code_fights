# Code Fights - Arcade - Problem 56 - digitsProduct

def digitsProduct(product)
  return 10 if product == 0
  return product if product < 10
  return -1 if is_prime?(product)
  
  possible_digs = factors_under_10(product)
  
  2.upto(possible_digs.length + 1) do |i|
    current_sets = possible_digs.repeated_permutation(i).to_a
    
    current_sets.each do |set|
      return set.join('').to_i if set.reduce(:*) == product
    end
  end
  
  -1
end

def is_prime?(int)
  prime = true
  
  3.upto(int / 2 + 1) do |i|
    if int % i == 0
      prime = false
      break
    end
  end
  
  prime
end

def factors_under_10(int)
  factors = []
  
  2.upto(9) do |i|
    factors << i if int % i == 0
  end
  
  factors
end

p digitsProduct(0)      # => 10
p digitsProduct(12)     # => 26
p digitsProduct(243)    # => 399
p digitsProduct(360)    # => 589
p digitsProduct(450)    # => 2559
p digitsProduct(13)     # => -1
p digitsProduct(19)     # => -1
p digitsProduct(33)     # => -1
p digitsProduct(484)    # => -1


# Input
# - An integer (product) that is greater than 0

# Output
# - An integer representing the smallest possible integer whose digits have a 
#   product of (product)
#   - If no such integer exists, then -1

# Approach
# - Guard clause if product is 0 (return 10)
# - Test if number is prime
#   - If yes, return -1
#   - Else, loop up, starting from 2
#     - On each iteration, test if product of digits is equal to (prod), if true return
