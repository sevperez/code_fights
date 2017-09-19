# Code Fights - Arcade - Problem 28 - alphabeticShift

def alphabeticShift(inputString)
  inputString.chars.map do |c|
    final_ord = c =~ /[a-z]/ ? 122 : 90
    
    shift = c.ord + 1
    shift > final_ord ? (shift - 26).chr : shift.chr
  end.join
end

inputString = "crazy"
p alphabeticShift(inputString) #== "dsbaz"
