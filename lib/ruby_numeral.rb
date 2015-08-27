class RubyNumeral
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def convert
    'I' * string.to_i
  end
end
