require_relative './test_helper'
require_relative '../lib/ruby_numeral'

class TestRubyNumeral < Minitest::Test
  def test_to_roman_1
    assert_equal RubyNumeral.new('1').convert, 'I'
  end
end
