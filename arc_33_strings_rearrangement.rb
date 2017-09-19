# Code Fights - Arcade - Problem 33 - stringsRearrangement

def stringsRearrangement(inputArray)
  str_len = inputArray[0].length
  arrangements = inputArray.permutation.to_a
  
  arrangements.each do |arrangement|
    arrangement.map!.with_index do |string, str_idx|
      next if str_idx == arrangement.length - 1
      
      char_diffs = 0
      
      0.upto(str_len - 1) do |char_idx|
        char_diffs += 1 if string[char_idx] != arrangement[str_idx + 1][char_idx]
      end
      
      char_diffs
    end
    
    return true if arrangement.compact.all? { |diffs| diffs == 1 }
  end
  
  false
end

inputArray = ["aba", "bbb", "bab"]
p stringsRearrangement(inputArray) == false

inputArray = ["ab", "bb", "aa"]
p stringsRearrangement(inputArray) == true

inputArray = ["ab", "ad", "ef", "eg"]
p stringsRearrangement(inputArray) == false
