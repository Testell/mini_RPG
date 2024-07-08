require_relative 'base_attribute'

class Attribute < BaseAttribute
  attr_reader :final_value

  def initialize(starting_value)
    super(starting_value)
    @raw_bonuses = []
    @final_bonuses = []
    @final_value = baseValue
  end

  def add_raw_bonus(bonus)
    unless bonus.is_a?(RawBonus)
      raise TypeError, 'Bonus must be a RawBonus'
    end
    @raw_bonuses << bonus
  end

  def add_final_bonus(bonus)
    unless bonus.is_a?(FinalBonus)
      raise TypeError, 'Bonus must be a FinalBonus'
    end
    @final_bonuses << bonus
  end

  def remove_raw_bonus(bonus)
    @raw_bonuses.delete(bonus)
  end

  def remove_final_bonus(bonus)
    @final_bonuses.delete(bonus)
  end

  def calculate_value
    @final_value = baseValue

    # Adding value from raw bonuses
    raw_bonus_value = 0
    raw_bonus_multiplier = 0.0

    @raw_bonuses.each do |bonus|
      raw_bonus_value += bonus.baseValue
      raw_bonus_multiplier += bonus.baseMultiplier
    end

    @final_value += raw_bonus_value
    @final_value *= (1 + raw_bonus_multiplier)

    # Adding value from final bonuses
    final_bonus_value = 0
    final_bonus_multiplier = 0.0

    @final_bonuses.each do |bonus|
      final_bonus_value += bonus.baseValue
      final_bonus_multiplier += bonus.baseMultiplier
    end

    @final_value += final_bonus_value
    @final_value *= (1 + final_bonus_multiplier)

    @final_value
  end

  def final_value
    calculate_value
  end
end
