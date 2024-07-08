
class Rogue
  attr_reader :character, :level, :experience

  def initialize(name, level = 1, experience = 0)
    health = 100
    strength = 50
    dexterity = 100
    intelligence = 40
    @character = Character.new(name, health, strength, dexterity, intelligence)
    self.level = level
    self.experience = experience
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
    @character.display_details
    pp "Level: #{@level}"
    pp "Experience: #{@experience}"
  end
end
