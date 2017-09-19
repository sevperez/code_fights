# Code Fights - Arcade - Problem 18 - palindromeRearranging

def palindromeRearranging(inputString)
  letters = inputString.chars
  
  sorted = letters.sort_by { |ele| inputString.chars.count(ele) }.reverse
  
  left = []
  right = []
  current = left
  
  sorted.each do |c|
    current = current == left ? right : left if c == current.last
    
    current << c
  end
  
  right.reverse!
  
  possible_palindrome = (left + right).join
  possible_palindrome == possible_palindrome.reverse
end

inputString = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaazzyaa"
p palindromeRearranging(inputString) == true

inputString2 = "aaabbbdd"
p palindromeRearranging(inputString2) == false


# -- SLOW VERSION --
# def slow_palindromeRearranging(inputString)
#   length = inputString.length
#   palindrome_exists = false
  
#   inputString.chars.permutation(length) do |perm|
#     variant = perm.join
    
#     if variant == variant.reverse
#       palindrome_exists = true
#       break
#     end
#   end
  
#   palindrome_exists
# end
