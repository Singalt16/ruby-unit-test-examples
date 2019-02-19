# Ruby Unit Testing Tutorial #
This tutorial provides a hands-on exercise for learning how to perform unit testing with the Test::Unit Ruby framework.

## 1) Install sample file: ##
To follow along, either download the 'exercise.rb' file, or create your own ruby file with functions that you wish to test.

## 2) Set up a test file: ##
1. Create a new Ruby file for your test(s)
2. Require test/unit at the top of your file, as well as the file with your functions

	```ruby
	require 'test/unit'
	require './exercise'
	```
3. Create a test case class

	```ruby
	class MyTestCase < Test::Unit::TestCase
	```
## 3) Create your tests: ##
1. Add a test method to your test case
	- It is good practice to start the name of your method with the word “test”.

	```ruby
	class MyTestCase < Test::Unit::TestCase

	  def test_add
	    # testing the 'add' function
	  end
	end
	```
2. Add assertions to your test method. These assert statements within your testing method will be your individual tests.

	```ruby
	class MyTestCase < Test::Unit::TestCase

	  def test_add
	    assert_equal 43, add(-20, 63)
	    assert_not_equal -19, add(0, 19)
	  end
	end
	```
3. Create more test methods and assertion statements

	```ruby
	class MyTestCase < Test::Unit::TestCase

	  def test_add
	    assert_equal 43, add(-20, 63)
	    assert_not_equal -19, add(0, 19)
	  end

	  def test_subtract
	    assert_equal 2, subtract(30, 28)
	    assert_not_equal -6, subtract(0, -6)
	  end
	end
	```

## 4) Run your tests: ##
1. Simply run your test script as you would any other Ruby script and the Test::Unit framework will do the rest.
See below for an example of the Test::Unit output, which shows that one of our tests has failed:

	<img src="images/tutorial_output.png" width="75%">
As seen from the terminal output, we can see what value our assert statement expected versus the value it actually received. The specific assertion that failed is also pointed out in our code.

