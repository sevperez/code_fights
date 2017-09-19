# Code Fights - Arcade - Problem 11 - isLucky

def isLucky(n)
  int_str = n.to_s
  half_index = int_str.length / 2
  
  left_digs = int_str[0..(half_index - 1)].chars.map(&:to_i)
  right_digs = int_str[half_index..-1].chars.map(&:to_i)
   
  left_digs.reduce(:+) == right_digs.reduce(:+)
end

p isLucky(1230) # => true
p isLucky(239017) # => false
