require './exercise'
require 'test/unit'

class TestCase1 < Test::Unit::TestCase

  def test_add
    # Tests that the result of add is as expected
    assert_equal 43, add(-20, 63)
    assert_not_equal -19, add(0, 19)

    # Tests that the result of add when adding floats
    # is within 0.0001 of the expected
    assert_in_delta add(1.0324, 4.32), 5.3524, 0.0001

    # Tests that add raises an error when given non-numeric arguments
    assert_raise(ArgumentError) {
      add("5", 9)
    }

    # Tests that add does not raise an error when given numeric arguments
    assert_nothing_raised(ArgumentError) {
      add(9.4, 20)
    }
  end
end
