require_relative 'BaseAttribute'

class RawBonus < BaseAttribute
  def initialize(value = 0, multiplier = 0.0)
    super(value, multiplier)
  end
end
