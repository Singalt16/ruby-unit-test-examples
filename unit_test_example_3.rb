# Example 3:
# This example shows how unit testing with Test::Unit might
# be used to test the functionality of methods in your program.

require 'test/unit'

def addition (a, b)
    a + b
end

def subtraction(a, b)
    a - b
end

#Note: This method does not perform multiplication correctly
def multiplication(a, b) 
    a - b
end


class TestCode < Test::Unit::TestCase
    def setup
        #Test variables
        @a = 10
        @b = 30
    end
    
    def test_addition     #Test addition functionality    
        assert_equal(40, addition(@a, @b))
    end
    
    def test_subtraction  #Test subtraction functionality    
        assert_equal(-20, subtraction(@a, @b))
    end
    
    def test_multiplication #Test multiplication functionality        
        assert_equal(300, multiplication(@a, @b))
    end
end
