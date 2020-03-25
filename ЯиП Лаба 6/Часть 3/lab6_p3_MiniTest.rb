require 'test/unit'
require_relative 'logic_lab6.rb'

class FooTest < Test::Unit::TestCase
  def test_001
    proisv = Proisvodnaya.new(1)
    assert_equal 2.6327038067624264, proisv.differ(0.470625888171158,0.479425538604203,0.48817724688290753)
  end

  def test_002
    proisv = Proisvodnaya.new(2)
    assert_equal 611.7352893389303, proisv.differ(12.349856441625802,14.10141994717172,16.428091703885336)
  end
end
