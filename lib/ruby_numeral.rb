class RubyNumeral
  ARABIC_TO_ROMAN_MAP = {
    '4' => 'IV'
  }

  attr_reader :string

  def initialize(string)
    @string = string
  end

  def convert
    if integer < 4
      'I' * integer
    else
      ARABIC_TO_ROMAN_MAP[string]
    end
  end

  private
    def integer
      string.to_i
    end
end
