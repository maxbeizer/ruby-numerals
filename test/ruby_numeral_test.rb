require_relative './test_helper'
require_relative '../lib/ruby_numeral'

class TestRubyNumeral < Minitest::Test
  def test_to_roman_1
    assert_equal 'I', convert('1')
  end

  def test_to_roman_2
    assert_equal 'II', convert('2')
  end

  def test_to_roman_3
    assert_equal 'III', convert('3')
  end

  def test_to_roman_4
    assert_equal 'IV', convert('4')
  end

  def test_to_roman_5
    assert_equal 'V', convert('5')
  end

  def test_to_roman_6
    assert_equal 'VI', convert('6')
  end

  def test_to_roman_7
    assert_equal 'VII', convert('7')
  end

  def test_to_roman_8
    assert_equal 'VIII', convert('8')
  end

  def test_to_roman_9
    assert_equal 'IX', convert('9')
  end

  def test_to_roman_10
    assert_equal 'X', convert('10')
  end

  private
  def convert(str)
    RubyNumeral.new(str).convert
  end
end
