# Code Fights - Arcade - Problem 13 - reverseParentheses

def reverseParentheses(s)
  letters = s.chars
  
  while letters.include?("(")
    current_pair = innermost_parentheses(letters)
    left, right = current_pair
    letters[left..right] = reverse_section(letters[left..right])
  end
  
  letters.compact.join
end

def innermost_parentheses(letters)
  inner_pair = [nil, nil]
  letters.each_with_index do |c, idx|
    if c == "("
      inner_pair[0] = idx
    elsif c == ")"
      inner_pair[1] = idx
      break
    end
  end
  
  inner_pair
end

def reverse_section(section)
  section.map { |c| ["(", ")"].include?(c) ? nil : c }.reverse
end


s = "a(bc)de(abc)"
p reverseParentheses(s) # == "acbdecba"

s = "Code(Cha(lle)nge)"
p reverseParentheses(s) # == "CodeegnlleahC"
