require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'arcade_7'

class AlmostIncreasingTest < Minitest::Test
  def tests_true_one
    assert_equal(true, almostIncreasingSequence([1, 3, 2]))
  end
  
  def test_true_two
    assert_equal(true, almostIncreasingSequence([10, 1, 2, 3, 4, 5]))
  end
  
  def test_true_three
    assert_equal(true, almostIncreasingSequence([0, -2, 5, 6]))
  end
  
  def test_true_four
    assert_equal(true, almostIncreasingSequence([1, 2, 3, 4, 99, 5, 6]))
  end
  
  def test_true_five
    assert_equal(true, almostIncreasingSequence([123, -17, -5, 1, 2, 3, 12, 43, 45]))
  end
  
  def test_true_six
    assert_equal(true, almostIncreasingSequence([-5, -4, -3, -2, 10, 2, 8]))
  end
  
  def test_true_seven
    assert_equal(true, almostIncreasingSequence([3, 4, 10, 5, 10]))
  end
  
  def test_true_eight
    assert_equal(true, almostIncreasingSequence([1, 2, 18, 3, 4]))
  end
  
  def test_false_one
    assert_equal(false, almostIncreasingSequence([1, 3, 2, 1]))
  end
  
  def test_false_two
    assert_equal(false, almostIncreasingSequence([1, 2, 1, 2]))
  end
  
  def test_false_three
    assert_equal(false, almostIncreasingSequence([1, 4, 10, 4, 2]))
  end
  
  def test_false_four
    assert_equal(false, almostIncreasingSequence([40, 50, 60, 10, 20, 30]))
  end
  
  def test_false_five
    assert_equal(false, almostIncreasingSequence([1, 2, 5, 5, 5]))
  end
  
  def test_large
    large_sequence = (0..100000).to_a
    large_sequence[5000] = -10
    
    result = almostIncreasingSequence(large_sequence)
    
    assert_equal(true, result)
  end
end
