class RubyNumeral
  ARABIC_TO_ROMAN_MAP = {
    '4' => 'IV',
    '5' => 'V',
    '9' => 'IX',
    '10' => 'X'
  }

  attr_accessor :string_to_return,
                :start_string

  def initialize(start_string)
    @start_string     = start_string
    @string_to_return = ''
  end

  def convert(current_string=start_string)
    case true
    when current_string == '0' then string_to_return
    when !!get_from_map(current_string) then set_return_and_recurse(current_string, integer(current_string), get_from_map(current_string))
    when greater_than_five?(current_string) then set_return_and_recurse(current_string, 5, 'V')
    else set_return_and_recurse(current_string, 1, 'I')
    end
  end

  private
  def set_return_and_recurse(current, reduce_by, roman)
    current = integer(current) - reduce_by
    string_to_return << roman
    convert(current.to_s)
  end

  def greater_than_five?(string_to_compare)
    string_to_compare.to_i > 5
  end

  def integer(str)
    str.to_i
  end

  def get_from_map(str)
    ARABIC_TO_ROMAN_MAP[str]
  end
end
