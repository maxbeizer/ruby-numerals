class RubyNumeral
  ARABIC_TO_ROMAN_MAP = {
    '4' => 'IV',
    '5' => 'V'
  }

  attr_reader :string

  def initialize(string)
    @string = string
  end

  def convert
    ARABIC_TO_ROMAN_MAP.fetch(string) { 'I' * integer }
  end

  private
    def integer
      string.to_i
    end
end
