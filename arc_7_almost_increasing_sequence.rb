# Code Fights - Arcade - Problem 7 - almostIncreasingSequence

def almostIncreasingSequence(sequence)
  return false if num_repeats(sequence) > 1
  return true if check_uniq_sort(sequence)
  
  result = false
  last_idx = sequence.length - 1
  sequence.each_with_index do |ele, idx|
    
    if (idx != last_idx && ele >= sequence[idx + 1]) || 
         (idx != 0 && ele <= sequence[idx - 1])

      test_sequence = copy_without_current(sequence, idx)
      
      if check_uniq_sort(test_sequence)
        result = true
        break
      end
    end
  end
  
  result
end

def num_repeats(sequence)
  sequence.length - sequence.uniq.length
end

def copy_without_current(sequence, current)
  sequence.select.with_index { |ele, idx| idx != current }
end

def check_uniq_sort(sequence)
  sequence == sequence.uniq.sort
end
