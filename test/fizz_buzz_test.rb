require          'minitest/autorun'
require_relative '../lib/fizz_buzz'

class FizzBuzzTest < Minitest::Test
  def test_initialize_with_valid_arguments
    assert_instance_of FizzBuzz, FizzBuzz.new(1)
    assert_instance_of FizzBuzz, FizzBuzz.new(3)
    assert_instance_of FizzBuzz, FizzBuzz.new(5)
    assert_instance_of FizzBuzz, FizzBuzz.new(15)
  end

  def test_initialize_with_invalid_arguments
    assert_raises(ArgumentError, 'Argument `number` is required.')                          { FizzBuzz.new(nil) }
    assert_raises(ArgumentError, 'Argument `number` must be an instance of Integer class.') { FizzBuzz.new('3') }
    assert_raises(ArgumentError, 'Argument `number` must be greater than 0.')               { FizzBuzz.new(-1) }

  end

  def test_to_s
    assert_equal '1',        FizzBuzz.new(1).to_s
    assert_equal '2',        FizzBuzz.new(2).to_s
    assert_equal 'Fizz',     FizzBuzz.new(3).to_s
    assert_equal '4',        FizzBuzz.new(4).to_s
    assert_equal 'Buzz',     FizzBuzz.new(5).to_s
    assert_equal 'Fizz',     FizzBuzz.new(6).to_s
    assert_equal '7',        FizzBuzz.new(7).to_s
    assert_equal '8',        FizzBuzz.new(8).to_s
    assert_equal 'Fizz',     FizzBuzz.new(9).to_s
    assert_equal 'Buzz',     FizzBuzz.new(10).to_s
    assert_equal '11',       FizzBuzz.new(11).to_s
    assert_equal 'Fizz',     FizzBuzz.new(12).to_s
    assert_equal '13',       FizzBuzz.new(13).to_s
    assert_equal '14',       FizzBuzz.new(14).to_s
    assert_equal 'FizzBuzz', FizzBuzz.new(15).to_s
  end
end
