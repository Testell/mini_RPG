class BaseAttribute
  attr_reader :baseValue, :baseMultiplier

  def initialize(baseValue, baseMultiplier = 0.0)
    self.baseValue = baseValue
    self.baseMultiplier = baseMultiplier
  end

  def base_value = (value)
    unless value.is_a?(Integer)
      raise TypeError, 'baseValue must be an integer'
    end
    @baseValue = value
  end

  def base_multiplier = (value)
    unless value.is_a?(Float) || value.is_a?(Integer)
      raise TypeError, 'baseMultiplier must be a float'
    end
    @baseMultiplier = value.to_f
  end

end
