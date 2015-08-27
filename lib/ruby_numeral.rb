class RubyNumeral
  ARABIC_TO_ROMAN_MAP = {
    '4'  => 'IV',
    '5'  => 'V',
    '9'  => 'IX',
    '10' => 'X'
  }

  attr_accessor :return_string,
                :start_string

  def initialize(start_string)
    @start_string  = start_string
    @return_string = ''
  end

  def convert(current_string=start_string)
    case true
    when current_string == '0' then return_string
    when in_the_dictionary?(current_string) then set_return_and_recurse(current_string, integer(current_string), get_from_map(current_string))
    when greater_than_five?(current_string) then set_return_and_recurse(current_string, 5, 'V')
    else set_return_and_recurse(current_string, 1, 'I')
    end
  end

  private
  def set_return_and_recurse(current, reduce_by, roman)
    current = integer(current) - reduce_by
    return_string << roman
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

  def in_the_dictionary?(str)
    !!get_from_map(str)
  end
end
