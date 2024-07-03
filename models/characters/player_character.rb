require_relative 'Character'

class PlayerCharacter < Character
  attr_reader :level, :experience

  def initialize(name, health, strength, dexterity, intelligence, level, experience)
    super(name, health, strength, dexterity, intelligence)
    self.level = level
    self.experience = experience
  end

  def level=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Level must be an integer'
    end
    @level = value
  end

  def experience(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Experience must be an integer'
    end
    @experience = value
  end
  
end
