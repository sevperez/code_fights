# Code Fights - The Core - Problem 32 - Rounders

def rounders(value)
  digs = value.to_s.split('').map(&:to_i)
  
  increase = false
  (digs.length - 1).downto(0) do |idx|
    digs[idx] += 1 if increase
    break if idx == 0
    
    if digs[idx] < 5
      digs[idx] = 0
      increase = false
    else
      digs[idx] = 0
      increase = true
    end
  end
  
  digs.map(&:to_s).join('').to_i
end

p rounders(15)      # => 20
p rounders(1234)    # => 1000
p rounders(1445)    # => 2000
p rounders(14)      # => 10
p rounders(10)      # => 10

# Input
# - An integer (value)

# Output
# - An integer that represents the input value, rounded as follows:
#   - Rules:
#     - Beginning on the rightmost digit, round to 0 if < 5, or to 10 if >= 5
#     - Adust digit to left as needed
#     - Stop rounding when only 1 non-zero digit remains
#   - Ex:
#     - 1445 -> 1450 -> 1500 -> 2000

# Approach
# - Split value into an array of digs
# - Set "increase" to false
# - Loop from array.length - 1 down
#   - On each iteration
#   - If increase == true, increment by 1
#   - If idx > 0
#     - Round digit appropriately
# - Join dig array back together
  
