# test_for_solve.rb
require './solve.rb'
require 'minitest/autorun'
# Test class
class Test1 < MiniTest::Unit::TestCase
  def test_1
    x = 1
    res = Math.cos(-1/3)
    assert_in_delta(res, solve(x), 10**-4)
  end

  def test_2
    x= -1
    res = Math.cos(1/9)
    assert_in_delta(res, solve(x), 10**-4)
  end

  def test_3
    x= 3
    res = Math.cos(1)
    assert_in_delta(res, solve(x), 10**-4)
  end

  def test_4
    x= -3
    res = Math.cos(1/5)
    assert_in_delta(res, solve(x), 10**-4)
  end

  def test_5
    x= -2
    res = Math.cos(1/4)
    assert_in_delta(res, solve(x), 10**-4)
  end
end
