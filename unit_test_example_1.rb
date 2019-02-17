require 'test/unit'

# Broken function
def find_smallest(arr)
  if not arr.is_a? Array or arr.length < 1
    raise ArgumentError.new('argument must be a non-empty array')
  end

  min = 0 # Will not work for arrays with no negative or 0 values
  arr.each do |el|
    if el < min
      min = el
    end
  end
  min
end

class TestCase1 < Test::Unit::TestCase

  def test_find_smallest
    assert_equal 1, find_smallest([2, 1, 9, 3, 39]) # Should fail
    assert_equal -20, find_smallest([4, 1202, -20])
    assert_raise ArgumentError do
      find_smallest("string, not array")
    end
    assert_raise ArgumentError do
      find_smallest([])
    end
  end
end
