require 'test/unit'
require_relative 'lab6_p2.rb'

class FooTest < Test::Unit::TestCase
  def test_001
    assert_equal 0.009998000399920015, schet(0.01)
  end

  def test_002
    assert_equal 0.000999998000004, schet(0.001)
  end
end
