# Code Fights - The Core - Problem 48 - Weak Numbers

def weakNumbers(n)
  # set divisors hash
  divisors = {}
  
  # iterate over range (1..n), counting divisors and add to divisor hash
  (1..n).each do |i|
    divisors[i] = count_divisors(i)
  end
  
  # loop over hash keys, counting num of smaller keys with greater divisors
  # push weakness value for each key into weakness array
  weakness = []
  divisors.keys.each do |k|
    k_divisors = divisors[k]
    
    count = 0
    (1..k - 1).each do |s|
      count += 1 if divisors[s] > k_divisors
    end
    
    weakness << count
  end
  
  max_weakness = weakness.max
  max_occurences = weakness.count(max_weakness)
  
  [max_weakness, max_occurences]
end

def count_divisors(num)
  count = 0
  
  1.upto((num / 2).ceil) do |i|
    count += 1 if num % i == 0
  end
  
  # return count, plus one to account for num itself
  count + 1
end

p weakNumbers(9)        # => [2, 2]
p weakNumbers(1)        # => [0, 1]
p weakNumbers(2)        # => [0, 2]
p weakNumbers(7)        # => [2, 1]
p weakNumbers(500)      # => [403, 1]

# Input
# - A positive integer (n)

# Output
# - An array answering two questions [a, b]
#   - a = the weakness of the "weakest" number in the range [1, n]
#   - b = the number of numbers in the range [1, n] that have this weakness
#   - Rules:
#     - Weakness is the number of positive integers smaller than a number that
#       have more divisors than the number

# Approach
# - Map over the range (1..n) and convert each number to its number of divisors
#   - Set divisors to 0
#   - Loop from 1 to (n / 2).ceil
#     - If n % i == 0, increment divisors count
# - Loop over keys
#   - Count number of smaller keys that have a greater number of divisors
#   - Push this count to the weakness array
# - Get max of weakness array
# - Count occurences of max
