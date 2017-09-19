# Code Fights - Arcade - Problem 14 - alternatingSums

def alternatingSums(a)
  team_1 = a.select.with_index { |_, idx| idx.even? }.reduce(:+)
  team_2 = a.select.with_index { |_, idx| idx.odd? }.reduce(:+)
  
  [team_1, team_2].map { |weight| weight.nil? ? 0 : weight }
end

a = [50, 60, 60, 45, 70]
p alternatingSums(a) # == [180, 105]
