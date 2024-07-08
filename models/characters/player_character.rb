require_relative 'character'

class PlayerCharacter < Character
  attr_reader :level, :experience

  def initialize( level = 1, experience = 0)
    self.level = level
    self.experience = experience
    super(name, health, strength, dexterity, intelligence)
  end

  def level=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Level must be an integer'
    end
    @level = value
  end

  def experience=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Experience must be an integer'
    end
    @experience = value
  end

  def display_details
    super
    pp "Level: #{@level}"
    pp "Experience: #{@experience}"
  end
  
end
