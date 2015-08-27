require_relative './test_helper'
require_relative '../lib/ruby_numeral'

class TestRubyNumeral < Minitest::Test
  def test_to_roman_1
    assert_equal convert('1'), 'I'
  end

  def test_to_roman_2
    assert_equal convert('2'), 'II'
  end

  def test_to_roman_3
    assert_equal convert('3'), 'III'
  end

  def test_to_roman_4
    assert_equal convert('4'), 'IV'
  end

  def test_to_roman_5
    assert_equal convert('5'), 'V'
  end

  private
    def convert(str)
      RubyNumeral.new(str).convert
    end
end
