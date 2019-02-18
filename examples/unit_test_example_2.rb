require 'test/unit'

class Dog

  def initialize(name)
    @name = name
  end

  def speak
    "Woof! I'm " + @name
  end
end

#------------Test-Case-------------
class TestCase1 < Test::Unit::TestCase

  def setup
    @max = Dog.new("Max")
  end

  def test_dog_speak
    assert_equal "Woof! I'm Max", @max.speak
    assert_not_equal "Hello, I'm Max", @max.speak
  end
end
#----------------------------------
