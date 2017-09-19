require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'arcade_18'

class PalindromeRearrangingTest < Minitest::Test
  def test_short_true
    inputString = "aabb"
    assert_equal(palindromeRearranging(inputString), true)
    
    inputString2 = "abbcabb"
    assert_equal(palindromeRearranging(inputString2), true)
    
    inputString3 = "zyyzzzzz"
    assert_equal(palindromeRearranging(inputString3), true)
    
    inputString4 = "zaa"
    assert_equal(palindromeRearranging(inputString4), true)
  end
  
  def test_single_letter
    inputString = "z"
    assert_equal(palindromeRearranging(inputString), true)
  end
  
  def test_short_false
    inputString = "abcdef"
    assert_equal(palindromeRearranging(inputString), false)
    
    inputString2 = "abca"
    assert_equal(palindromeRearranging(inputString2), false)
  end
  
  def test_long_true
    inputString = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaazzyaa"
    assert_equal(palindromeRearranging(inputString), true)
  end
  
  def test_long_false
    inputString = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaabc"
    assert_equal(palindromeRearranging(inputString), false)
  end
end
