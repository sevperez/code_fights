# Code Fights - Arcade - Problem 8 - commonCharacterCount

def commonCharacterCount(s1, s2)
  chars1 = s1.chars
  chars2 = s2.chars
  common_chars = 0
  
  chars1.each do |c|
    if chars2.include?(c)
      idx = chars2.find_index(c)
      chars2.delete_at(idx)
      common_chars += 1
    end
  end
  
  common_chars
end
