# Code Fights - Arcade - Problem 36 - differentSymbolsNaive

def differentSymbolsNaive(s)
  s.chars.uniq.length
end

s = "cabca"
p differentSymbolsNaive(s) #== 3
