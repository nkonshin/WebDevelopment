# frozen_string_literal: true

# 5_2_test.rb
require './5_2_main.rb'
require 'minitest/autorun'
# Test class
class Test < MiniTest::Unit::TestCase
  def test_without_fix
    str = 'Пример текста тут всё останется'
    assert_equal(str, correct(str))
  end

  def test_with_fix
    str = 'Пример текста: не то ты выбрал тут должны изменится третье и четвёртое слова'
    assert_equal('Пример текста: те те ты выбрал тут должны изменится третье и четвёртое слова', correct(str))
  end

  end
