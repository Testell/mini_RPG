class Character 
  attr_reader :name, :health, :strength, :dexterity, :intelligence,

  def initialize(name, health, strength, dexterity, intelligence)
    self.name = name
    self.level = level
    self.health = health
    self.strength = strength
    self.dexterity = dexterity
    self.intelligence = intelligence
    self.experience = experience
  end

  def name=(value)
    unless value.is_a?(String)
      raise TypeError, 'Name must be a string'
    end
    @name = value.capitalize
  end

  def health=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Health must be an integer'
    end
    @health = value
  end

  def strength=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Strength must be an integer'
    end
    @strength = value
  end

  def dexterity=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Dexterity must be an integer'
    end
    @dexterity = value
  end

  def inteligence=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Inteligence must be an integer'
    end
    @inteligence = value
  end

end
