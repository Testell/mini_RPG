class Weapon
  attr_reader :type, :damage

  def initialize(type, damage)
    self.type = type
    self.damage = damage
    self.skill = skill
  end

  def type=(value)
    unless value.is_a?(String)
      raise TypeError, 'Type must be a string'
    end
    @type = value
  end

  def damage=(damage)
    unless value.is_a?(Integer)
      raise TypeError, 'Damage must be a integer'
    end
    @damage = value
  end
end 
