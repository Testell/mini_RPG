class Character 
  attr_reader :name, :health, :strength, :dexterity, :intelligence

  def initialize(name, health, strength, dexterity, intelligence)
    self.name = name
    self.health = health
    self.strength = strength
    self.dexterity = dexterity
    self.intelligence = intelligence
  end

  def name=(value)
    unless value.is_a?(String)
      raise TypeError, 'Name must be a string'
    end
    @name = value
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

  def intelligence=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Intelligence must be an integer'
    end
    @intelligence = value
  end

  def display_details
    puts "Name: #{@name}"
    puts "Health: #{@health}"
    puts "Strength: #{@strength}"
    puts "Dexterity: #{@dexterity}"
    puts "Intelligence: #{@intelligence}"
  end
end
