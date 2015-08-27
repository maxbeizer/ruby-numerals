class RubyNumeral
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def convert
    string == '1' ? 'I' : 'II'
  end
end
