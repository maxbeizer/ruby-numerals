require_relative './test_helper'
require_relative '../lib/ruby_numeral'

class TestRubyNumeral < Minitest::Test
  def test_to_roman_1
    assert_equal convert('1'), 'I'
  end

  def test_to_roman_2
    assert_equal convert('2'), 'II'
  end

  private
    def convert(str)
      RubyNumeral.new(str).convert
    end
end
