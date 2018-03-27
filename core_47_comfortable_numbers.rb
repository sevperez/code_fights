# Code Fights - The Core - Problem 47 - Comfortable Numbers

def comfortableNumbers(l, r)
  sets = {}
  (l..r).to_a.each { |num| sets[num] = identify_candidates(num, l, r) }
  
  count = 0
  sets.each do |num, candidates|
    candidates.each do |cand|
      count += 1 if cand > num && sets[cand].include?(num)
    end
  end
  
  count
end

def identify_candidates(num, l, r)
  sum_digs = num.to_s.split("").map(&:to_i).reduce(:+)
  
  set = ((num - sum_digs)..(num + sum_digs)).to_a
  set.select { |c| c != num && c >= l && c <= r }
end

p comfortableNumbers(10, 12)          # => 2
p comfortableNumbers(1, 9)            # => 20
p comfortableNumbers(13, 13)          # => 0
p comfortableNumbers(12, 108)         # => 707
p comfortableNumbers(239, 777)        # => 6166

# Input
# - An integer (l) and an integer (r)

# Output
# - An integer representing the number of "comfortable number pairs" in the segment (l, r)
#   - Rules:
#     - A pair (a, b) qualifies if:
#       - a < b
#       - a and b are both on segment [l, r]
#       - both a and b are comfortable with the other
#         - a != b
#         - b is in the segment [a - sumdigs(a), a + (sumdigs(a)]

# Approach
# - For each number in range (l..r), map a set of "comfortable numbers"
