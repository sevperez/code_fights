# Code Fights - The Core - Problem 26 - Count Sum of Two Representations 2

def countSumOfTwoRepresentations2(n, l, r)
  pairs = []
  
  l.upto(r) do |a|
    b = n - a
    break if b < a
    pairs << [a, b] if (l..r).include?(a) && (l..r).include?(b)
  end
  
  pairs.length
end

p countSumOfTwoRepresentations2(6, 2, 4)      # => 2
p countSumOfTwoRepresentations2(6, 3, 3)      # => 1
p countSumOfTwoRepresentations2(10, 9, 11)    # => 0
p countSumOfTwoRepresentations2(24, 8, 16)    # => 5
p countSumOfTwoRepresentations2(24, 12, 12)   # => 1
p countSumOfTwoRepresentations2(93, 24, 58)   # => 12

# Input
# - Three integers (n, l, r)

# Output
# - An integer representing the number of ways to write n as the sum of two integers
#   (a, b) where l <= a <= b <= r

# Approach
# - Set counter to 0
# - Loop from l to r, inclusive
#   - set a to current
#     - loop from l to r inclusive
#       - set b to current
#       - if a + b == n increment counter
# - Return counter

  # ALT:
  
    # def countSumOfTwoRepresentations2(n, l, r)
    #   (l..r).to_a.repeated_permutation(2).to_a.map(&:sort).uniq.select { |pair| pair[0] + pair[1] == n }.length
    # end
  
  # ALT 2:
  
    # def countSumOfTwoRepresentations2(n, l, r)
    #   pairs = []
      
    #   l.upto(r) do |a|
    #     l.upto(r) do |b|
    #       break if a + b > n
    #       pair = [a, b].sort
    #       pairs << pair if a + b == n && !pairs.include?(pair)
    #     end
    #     break if a >= n
    #   end
      
    #   pairs.length
    # end