require_relative 'base_attribute'

class FinalBonus < BaseAttribute
  def initialize(value = 0, multiplier = 0.0)
    super(value, multiplier)
  end
end
